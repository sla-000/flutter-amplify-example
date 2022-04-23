import 'package:amplify_example/blocs/orders/bloc.dart';
import 'package:amplify_example/blocs/orders/state.dart';
import 'package:amplify_example/di.dart';
import 'package:amplify_example/durations.dart';
import 'package:amplify_example/models/OrderModel.dart';
import 'package:amplify_example/models/ShopModel.dart';
import 'package:amplify_example/ui/day_header.dart';
import 'package:amplify_example/ui/error_text.dart';
import 'package:amplify_example/ui/hour_slot.dart';
import 'package:amplify_example/ui/shop_name.dart';
import 'package:amplify_example/utils/days.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShopCalendar extends StatelessWidget {
  const ShopCalendar({
    Key? key,
    required this.shop,
  }) : super(key: key);

  final ShopModel shop;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrdersBloc, OrdersState>(
      bloc: di<OrdersBloc>(),
      builder: (_, OrdersState snapshot) {
        if (snapshot.hasError) {
          return AnimatedSwitcher(
            duration: sDuration,
            child: ErrorText(error: snapshot.error!),
          );
        }

        if (snapshot.hasData) {
          return AnimatedSwitcher(
            duration: mDuration,
            child: _ShopCalendar(
              shop: shop,
              orders: snapshot.orders,
            ),
          );
        }

        return const AnimatedSwitcher(
          duration: sDuration,
          child: SizedBox.shrink(),
        );
      },
    );
  }
}

class _ShopCalendar extends StatefulWidget {
  const _ShopCalendar({
    Key? key,
    required this.shop,
    required this.orders,
  }) : super(key: key);

  final ShopModel shop;
  final List<OrderModel> orders;

  @override
  State<_ShopCalendar> createState() => _ShopCalendarState();
}

class _ShopCalendarState extends State<_ShopCalendar> {
  late List<DateTime> calendar;

  @override
  void didUpdateWidget(covariant _ShopCalendar oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.shop != oldWidget.shop) {
      calendar = calcCalendar(widget.shop.workingWeekDays?.toSet() ?? {});
    }
  }

  @override
  void initState() {
    super.initState();

    calendar = calcCalendar(widget.shop.workingWeekDays?.toSet() ?? {});
  }

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: <Widget>[
          SliverPersistentHeader(
            delegate: ShopHeaderDelegate(),
            floating: true,
            pinned: true,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                final DateTime date = calendar[index];

                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: DayHeader(date: date),
                      ),
                      WeekdaySchedule(
                        shop: widget.shop,
                        orders: widget.orders,
                        date: date,
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                );
              },
              childCount: calendar.length,
            ),
          ),
        ],
      ),
    );
  }
}

class ShopHeaderDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return const Material(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(8),
          bottomRight: Radius.circular(8),
        ),
      ),
      child: Center(
        child: ShopName(),
      ),
    );
  }

  @override
  double get maxExtent => 40;

  @override
  double get minExtent => 0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) => true;
}

class WeekdaySchedule extends StatelessWidget {
  const WeekdaySchedule({
    Key? key,
    required this.shop,
    required this.orders,
    required this.date,
  }) : super(key: key);

  final ShopModel shop;
  final List<OrderModel> orders;
  final DateTime date;

  @override
  Widget build(BuildContext context) {
    if (shop.startTime == null || shop.endTime == null) {
      return const SizedBox.shrink();
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const HourSlotsHeader(),
        const SizedBox(height: 8),
        ..._getItems(),
      ],
    );
  }

  List<Widget> _getItems() {
    final int startTime = shop.startTime!.getDateTime().hour;
    final int endTime = shop.endTime!.getDateTime().hour;

    final int workingHours = endTime - startTime;

    final List<int> hourSlots = Iterable.generate(workingHours, (int index) => startTime + index).toList();

    return hourSlots
        .map(
          (int hour) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: HourSlotData(
              shop: shop,
              orders: orders,
              startHour: hour,
              date: date,
            ),
          ),
        )
        .toList();
  }
}

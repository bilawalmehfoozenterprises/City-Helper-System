import 'package:app/src/core/constants/app_sizes.dart';
import 'package:app/src/core/utils/theme_extension.dart';
import 'package:app/src/themes/theme_helpers.dart';
import 'package:flutter/material.dart';

class HostelHomeScreen extends StatelessWidget {
  const HostelHomeScreen({super.key});

  static const _universities = [
    _University(
      'FAST University',
      'Lahore',
      'https://images.unsplash.com/photo-1564981797816-1043664bf78d?auto=format&fit=crop&w=900&q=80',
    ),
    _University(
      'University of Lahore',
      'Lahore',
      'https://images.unsplash.com/photo-1541339907198-e08756dedf3f?auto=format&fit=crop&w=900&q=80',
    ),
    _University(
      'NUST University',
      'Islamabad',
      'https://images.unsplash.com/photo-1606761568499-6d2451b23c66?auto=format&fit=crop&w=900&q=80',
    ),
  ];

  static const _boysHostels = [
    _Hostel(
      'Campus Cove Boys Hostel',
      'Johar Town, Lahore',
      'PKR 24,000',
      '4.8',
      'https://images.unsplash.com/photo-1555854877-bab0e564b8d5?auto=format&fit=crop&w=900&q=80',
    ),
    _Hostel(
      'Greenfield Boys Hostel',
      'G-11, Islamabad',
      'PKR 26,000',
      '4.6',
      'https://images.unsplash.com/photo-1522708323590-d24dbb6b0267?auto=format&fit=crop&w=900&q=80',
    ),
    _Hostel(
      'North Gate Boys Hostel',
      'Gulshan, Karachi',
      'PKR 23,500',
      '4.7',
      'https://images.unsplash.com/photo-1505693416388-ac5ce068fe85?auto=format&fit=crop&w=900&q=80',
    ),
  ];

  static const _girlsHostels = [
    _Hostel(
      'The Nest Girls Hostel',
      'Johar Town, Lahore',
      'PKR 28,500',
      '4.9',
      'https://images.unsplash.com/photo-1493809842364-78817add7ffb?auto=format&fit=crop&w=900&q=80',
    ),
    _Hostel(
      'Urban Hive Residence',
      'G-11, Islamabad',
      'PKR 32,000',
      '4.8',
      'https://images.unsplash.com/photo-1497366754035-f200968a6e72?auto=format&fit=crop&w=900&q=80',
    ),
    _Hostel(
      'Maple Girls Hostel',
      'DHA, Lahore',
      'PKR 30,500',
      '4.7',
      'https://images.unsplash.com/photo-1560185008-b033106af5c3?auto=format&fit=crop&w=900&q=80',
    ),
  ];

  static const _areas = [
    _Area(
      'Sector F-11',
      'Islamabad',
      'https://images.unsplash.com/photo-1524758631624-e2822e304c36?auto=format&fit=crop&w=900&q=80',
    ),
    _Area(
      'Sector A',
      'Lahore',
      'https://images.unsplash.com/photo-1497366811353-6870744d04b2?auto=format&fit=crop&w=900&q=80',
    ),
    _Area(
      'New Muslim Town',
      'Lahore',
      'https://images.unsplash.com/photo-1502672260266-1c1ef2d93688?auto=format&fit=crop&w=900&q=80',
    ),
    _Area(
      'Sector D',
      'Karachi',
      'https://images.unsplash.com/photo-1505693416388-ac5ce068fe85?auto=format&fit=crop&w=900&q=80',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(bottom: Sizes.p48),
      children: [
        _HeroSection(),
        _Section(
          title: 'Find your university',
          subtitle: 'Start your search close to campus.',
          trailing: 'View all',
          child: _HorizontalList(
            height: 184,
            children: _universities
                .map((university) => _UniversityCard(university: university))
                .toList(),
          ),
        ),
        _HostelSection(title: 'Boys hostels', hostels: _boysHostels),
        _HostelSection(title: 'Girls hostels', hostels: _girlsHostels),
        _Section(
          title: 'Popular areas',
          subtitle: 'Explore places students already love.',
          trailing: 'All areas',
          child: _HorizontalList(
            height: 150,
            children: _areas.map((area) => _AreaCard(area: area)).toList(),
          ),
        ),
      ],
    );
  }
}

class _HeroSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(
        Sizes.p16,
        Sizes.p16,
        Sizes.p16,
        Sizes.p24,
      ),
      padding: const EdgeInsets.all(Sizes.p24),
      decoration: BoxDecoration(
        color: context.colorScheme.primary,
        image: DecorationImage(
          image: const AssetImage('assets/images/hero-bg.png'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black.withValues(alpha: .58),
            BlendMode.darken,
          ),
        ),
        borderRadius: ThemeHelpers.surfaceBorderRadius(),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final compact = constraints.maxWidth < 600;
          final copy = Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Student living,\nmade easier.',
                style: context.textTheme.displaySmall?.copyWith(
                  color: context.colorScheme.onPrimary,
                  fontWeight: FontWeight.w800,
                  height: 1.02,
                  letterSpacing: -1,
                ),
              ),
              gapH12,
              Text(
                'Find a hostel near your university, compare your options, and settle in with confidence.',
                style: context.textTheme.bodyMedium?.copyWith(
                  color: context.colorScheme.onPrimary.withValues(alpha: .78),
                  height: 1.45,
                ),
              ),
            ],
          );
          final search = _SearchLauncher();
          return compact
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [copy, gapH24, search],
                )
              : Row(
                  children: [
                    Expanded(child: copy),
                    gapW32,
                    SizedBox(width: 330, child: search),
                  ],
                );
        },
      ),
    );
  }
}

class _SearchLauncher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.colorScheme.surface,
      borderRadius: ThemeHelpers.surfaceBorderRadius(),
      child: InkWell(
        borderRadius: ThemeHelpers.surfaceBorderRadius(),
        onTap: () => _showSearchDialog(context),
        child: Padding(
          padding: const EdgeInsets.all(Sizes.p12),
          child: Column(
            children: [
              _SearchSummaryRow(
                icon: Icons.location_on_outlined,
                label: 'University or campus',
                value: 'Where do you want to stay?',
              ),
              gapH8,
              Row(
                children: [
                  Expanded(
                    child: _SearchSummaryRow(
                      icon: Icons.tune,
                      label: 'Hostel type',
                      value: 'All',
                    ),
                  ),
                  gapW8,
                  Expanded(
                    child: _SearchSummaryRow(
                      icon: Icons.payments_outlined,
                      label: 'Monthly budget',
                      value: 'PKR 5,000 – 25,000',
                    ),
                  ),
                ],
              ),
              gapH8,
              SizedBox(
                width: double.infinity,
                child: FilledButton.icon(
                  onPressed: () => _showSearchDialog(context),
                  icon: const Icon(Icons.search),
                  label: const Text('Find hostels'),
                  style: FilledButton.styleFrom(
                    backgroundColor: context.colorScheme.primary,
                    foregroundColor: context.colorScheme.onPrimary,
                    minimumSize: const Size.fromHeight(Sizes.p48),
                    shape: RoundedRectangleBorder(
                      borderRadius: ThemeHelpers.surfaceBorderRadius(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _showSearchDialog(BuildContext context) async {
    final applied = await showDialog<bool>(
      context: context,
      builder: (_) => const _HostelSearchDialog(),
    );
    if (applied == true && context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Hostel search preferences applied')),
      );
    }
  }
}

class _SearchSummaryRow extends StatelessWidget {
  const _SearchSummaryRow({
    required this.icon,
    required this.label,
    required this.value,
  });

  final IconData icon;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: Sizes.p12,
        vertical: Sizes.p8,
      ),
      decoration: BoxDecoration(
        color: context.colorScheme.surfaceContainerLowest,
        border: Border.all(color: context.colorScheme.outline),
        borderRadius: ThemeHelpers.surfaceBorderRadius(),
      ),
      child: Row(
        children: [
          Icon(icon, color: context.colorScheme.onSurfaceVariant),
          gapW8,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(label, style: context.textTheme.labelSmall),
                Text(
                  value,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: context.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.keyboard_arrow_down,
            size: Sizes.p20,
            color: context.colorScheme.onSurfaceVariant,
          ),
        ],
      ),
    );
  }
}

class _HostelSearchDialog extends StatefulWidget {
  const _HostelSearchDialog();

  @override
  State<_HostelSearchDialog> createState() => _HostelSearchDialogState();
}

class _HostelSearchDialogState extends State<_HostelSearchDialog> {
  final _campusController = TextEditingController();
  String _hostelType = 'All';
  RangeValues _budget = const RangeValues(5000, 25000);

  @override
  void dispose() {
    _campusController.dispose();
    super.dispose();
  }

  String _formatBudget(double value) =>
      'PKR ${value.round().toStringAsFixed(0)}';

  Future<void> _pickBudget() async {
    final selected = await showModalBottomSheet<RangeValues>(
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      builder: (_) => _BudgetSheet(initialValue: _budget),
    );
    if (selected != null) setState(() => _budget = selected);
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.all(Sizes.p16),
      shape: RoundedRectangleBorder(
        borderRadius: ThemeHelpers.surfaceBorderRadius(),
      ),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(Sizes.p24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Find your next hostel',
                    style: context.textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.close),
                ),
              ],
            ),
            gapH8,
            Text(
              'Set your preferences and we will show the best matches.',
              style: context.textTheme.bodyMedium,
            ),
            gapH24,
            TextField(
              controller: _campusController,
              autofocus: true,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.location_on_outlined),
                labelText: 'University or campus',
                hintText: 'Search university or campus',
              ),
            ),
            gapH12,
            DropdownButtonFormField<String>(
              initialValue: _hostelType,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.tune),
                labelText: 'Hostel type',
              ),
              items: const [
                DropdownMenuItem(value: 'All', child: Text('All hostels')),
                DropdownMenuItem(value: 'Boys', child: Text('Boys hostel')),
                DropdownMenuItem(value: 'Girls', child: Text('Girls hostel')),
              ],
              onChanged: (value) {
                if (value != null) setState(() => _hostelType = value);
              },
            ),
            gapH12,
            InkWell(
              borderRadius: ThemeHelpers.surfaceBorderRadius(),
              onTap: _pickBudget,
              child: InputDecorator(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.payments_outlined),
                  labelText: 'Monthly budget',
                  suffixIcon: Icon(Icons.keyboard_arrow_down),
                ),
                child: Text(
                  '${_formatBudget(_budget.start)} – ${_formatBudget(_budget.end)}',
                  style: context.textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            gapH24,
            SizedBox(
              width: double.infinity,
              child: FilledButton.icon(
                onPressed: () => Navigator.pop(context, true),
                icon: const Icon(Icons.search),
                label: const Text('Find hostels'),
                style: FilledButton.styleFrom(
                  minimumSize: const Size.fromHeight(Sizes.p48),
                  shape: RoundedRectangleBorder(
                    borderRadius: ThemeHelpers.surfaceBorderRadius(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _BudgetSheet extends StatefulWidget {
  const _BudgetSheet({required this.initialValue});

  final RangeValues initialValue;

  @override
  State<_BudgetSheet> createState() => _BudgetSheetState();
}

class _BudgetSheetState extends State<_BudgetSheet> {
  late RangeValues _value = widget.initialValue;

  String _formatBudget(double value) =>
      'PKR ${value.round().toStringAsFixed(0)}';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(Sizes.p24, 0, Sizes.p24, Sizes.p24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'What can you spend?',
              style: context.textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.w800,
              ),
            ),
            gapH8,
            Text('Set your monthly range', style: context.textTheme.bodyMedium),
            gapH24,
            Row(
              children: [
                Text(
                  _formatBudget(_value.start),
                  style: context.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const Spacer(),
                Text(
                  _formatBudget(_value.end),
                  style: context.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
            RangeSlider(
              min: 0,
              max: 50000,
              divisions: 50,
              values: _value,
              labels: RangeLabels(
                _formatBudget(_value.start),
                _formatBudget(_value.end),
              ),
              onChanged: (value) => setState(() => _value = value),
            ),
            Row(
              children: [
                Text('PKR 0', style: context.textTheme.bodySmall),
                const Spacer(),
                Text('PKR 50,000', style: context.textTheme.bodySmall),
              ],
            ),
            gapH24,
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: () => Navigator.pop(context, _value),
                style: FilledButton.styleFrom(
                  minimumSize: const Size.fromHeight(Sizes.p48),
                ),
                child: const Text('Apply budget'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Section extends StatelessWidget {
  const _Section({
    required this.title,
    required this.subtitle,
    required this.trailing,
    required this.child,
  });

  final String title;
  final String subtitle;
  final String trailing;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: Sizes.p24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Sizes.p16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: context.textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      gapH4,
                      Text(subtitle, style: context.textTheme.bodySmall),
                    ],
                  ),
                ),
                TextButton(onPressed: () {}, child: Text(trailing)),
              ],
            ),
          ),
          gapH12,
          child,
        ],
      ),
    );
  }
}

class _HostelSection extends StatelessWidget {
  const _HostelSection({required this.title, required this.hostels});

  final String title;
  final List<_Hostel> hostels;

  @override
  Widget build(BuildContext context) {
    return _Section(
      title: title,
      subtitle: 'Comfortable stays close to where you need to be.',
      trailing: 'View all',
      child: _HorizontalList(
        height: 300,
        children: hostels.map((hostel) => _HostelCard(hostel: hostel)).toList(),
      ),
    );
  }
}

class _HorizontalList extends StatelessWidget {
  const _HorizontalList({required this.height, required this.children});

  final double height;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: Sizes.p16),
        scrollDirection: Axis.horizontal,
        itemCount: children.length,
        separatorBuilder: (_, _) => gapW12,
        itemBuilder: (_, index) => children[index],
      ),
    );
  }
}

class _UniversityCard extends StatelessWidget {
  const _UniversityCard({required this.university});
  final _University university;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 260,
      child: _ImageCard(
        imageUrl: university.imageUrl,
        title: university.name,
        subtitle: university.city,
        height: 184,
      ),
    );
  }
}

class _AreaCard extends StatelessWidget {
  const _AreaCard({required this.area});
  final _Area area;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 190,
      child: _ImageCard(
        imageUrl: area.imageUrl,
        title: area.name,
        subtitle: area.city,
        height: 150,
      ),
    );
  }
}

class _ImageCard extends StatelessWidget {
  const _ImageCard({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.height,
  });

  final String imageUrl;
  final String title;
  final String subtitle;
  final double height;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: ThemeHelpers.surfaceBorderRadius(),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            imageUrl,
            fit: BoxFit.cover,
            errorBuilder: (_, _, _) =>
                ColoredBox(color: context.colorScheme.surfaceContainer),
          ),
          const DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.transparent, Color(0xCC000000)],
              ),
            ),
          ),
          Positioned(
            left: Sizes.p16,
            right: Sizes.p16,
            bottom: Sizes.p12,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: context.textTheme.titleSmall?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  subtitle,
                  style: context.textTheme.bodySmall?.copyWith(
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _HostelCard extends StatelessWidget {
  const _HostelCard({required this.hostel});
  final _Hostel hostel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 245,
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 150,
              width: double.infinity,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    hostel.imageUrl,
                    fit: BoxFit.cover,
                    errorBuilder: (_, _, _) =>
                        ColoredBox(color: context.colorScheme.surfaceContainer),
                  ),
                  Positioned(
                    top: Sizes.p8,
                    left: Sizes.p8,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: Sizes.p8,
                        vertical: Sizes.p4,
                      ),
                      decoration: BoxDecoration(
                        color: context.colorScheme.secondary,
                        borderRadius: ThemeHelpers.surfaceBorderRadius(),
                      ),
                      child: Text(
                        'Verified',
                        style: context.textTheme.labelSmall?.copyWith(
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: Sizes.p8,
                    right: Sizes.p8,
                    child: CircleAvatar(
                      radius: 16,
                      child: Icon(Icons.favorite_border, size: 18),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(Sizes.p12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    hostel.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: context.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  gapH4,
                  Text(
                    hostel.location,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: context.textTheme.bodySmall,
                  ),
                  gapH8,
                  Row(
                    children: [
                      Text(
                        hostel.price,
                        style: context.textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const Spacer(),
                      Icon(
                        Icons.star,
                        size: 16,
                        color: context.colorScheme.onSurfaceVariant,
                      ),
                      gapW4,
                      Text(hostel.rating, style: context.textTheme.labelMedium),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _University {
  const _University(this.name, this.city, this.imageUrl);
  final String name;
  final String city;
  final String imageUrl;
}

class _Hostel {
  const _Hostel(
    this.name,
    this.location,
    this.price,
    this.rating,
    this.imageUrl,
  );
  final String name;
  final String location;
  final String price;
  final String rating;
  final String imageUrl;
}

class _Area {
  const _Area(this.name, this.city, this.imageUrl);
  final String name;
  final String city;
  final String imageUrl;
}

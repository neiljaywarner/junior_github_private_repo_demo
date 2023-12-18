import 'package:flutter/material.dart';

const imagePlaceholder = 'https://source.unsplash.com/random/?nature';
const textPlaceholder = 'Text placeholder';

// Title: Item showcase with horizontal list and main item card
// ishl-mic23
class TemplateWidget extends StatelessWidget {
  const TemplateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorScheme.primary,
      ),
      bottomNavigationBar: NavigationBar(
        height: 56.0,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedIndex: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      textPlaceholder,
                      style: textTheme.titleLarge!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_right),
                    ),
                  ],
                ),
                const SizedBox(height: 8.0),
                SizedBox(
                  height: 130.0,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        width: 100,
                        margin: const EdgeInsets.only(right: 8.0),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(16.0),
                          onTap: () {},
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(16.0),
                                child: Image.network(
                                  imagePlaceholder,
                                  height: 100,
                                  width: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(height: 8.0),
                              const Text(
                                textPlaceholder,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 16.0),
                Container(
                  height: size.width,
                  width: double.infinity,
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    image: const DecorationImage(
                      image: NetworkImage(imagePlaceholder),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        textPlaceholder,
                        style: textTheme.headlineLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        textPlaceholder,
                        style: textTheme.bodyLarge!.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      FilledButton.icon(
                        onPressed: () {},
                        style: FilledButton.styleFrom(
                          minimumSize: const Size.fromHeight(48.0),
                        ),
                        icon: const Icon(
                          Icons.add_shopping_cart,
                          color: Colors.white,
                        ),
                        label: Text(
                          textPlaceholder,
                          style: textTheme.labelLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../../themes/app_theme.dart';
import '../../widgets/social_link_button.dart';


class AboutTab extends StatelessWidget {
  const AboutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          const SizedBox(height: 40),

          Center(
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: AppTheme.primaryGradient,
              ),
              child: const CircleAvatar(
                radius: 75,
                backgroundColor: AppTheme.cardColor,
                backgroundImage: AssetImage('assets/images/profile.jpg'),
              ),
            ),
          ),
          const SizedBox(height: 24),

          
          Text(
            'Andres Miguel\nDiaz Arismendi',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const SizedBox(height: 12),
          Text(
            'Desarrollador de Software.\nEstudiante de Ingeniería.',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 32),

          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Wrap(
              alignment: WrapAlignment.center,
              spacing: 16,
              runSpacing: 16,
              children: [
                SocialLinkButton(
                  icon: Icons.code, 
                  label: 'GitHub',
                  onPressed: () {},
                ),
                SocialLinkButton(
                  icon: Icons.chat_bubble_outline, 
                  label: 'Twitter',
                  onPressed: () {},
                ),
                SocialLinkButton(
                  icon: Icons.work_outline, 
                  label: 'LinkedIn',
                  onPressed: () {},
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),

          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person_outline,
                      color: AppTheme.primaryColor,
                      size: 24,
                    ),
                    SizedBox(width: 8),
                    Text(
                      '¿Quién soy?',
                      style: TextStyle(
                        color: AppTheme.primaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Text(
                  'Soy un estudiante de Ingeniería de Sistemas de 18 años en la '
                  'Universidad de Margarita, residenciado en La Fuente. Actualmente '
                  'me dedico a tiempo completo a mis estudios universitarios y a mi '
                  'crecimiento como desarrollador, por lo que no me encuentro '
                  'trabajando profesionalmente.',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}

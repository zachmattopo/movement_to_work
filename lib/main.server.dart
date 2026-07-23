library;

import 'package:jaspr/dom.dart';
import 'package:jaspr/server.dart';

import 'app/app.dart';
import 'main.server.options.dart';

void main() {
  Jaspr.initializeApp(
    options: defaultServerOptions,
  );

  runApp(
    Document(
      base: '/movement_to_work/',
      lang: 'en',
      title: 'Movement to Work – One Move, Many Possibilities',
      meta: {
        'description': 'One Move, Many Possibilities – a Movement to Work DWP programme campaign for 18–24 year-olds.',
      },
      head: [
        link(href: 'https://fonts.googleapis.com', rel: 'preconnect'),
        link(href: 'https://fonts.gstatic.com', rel: 'preconnect', attributes: {'crossorigin': ''}),
        link(
          href:
              'https://fonts.googleapis.com/css2?family=Stack+Sans+Notch:wght@200..700&family=Stack+Sans+Text:wght@200..700&display=swap',
          rel: 'stylesheet',
        ),
        link(href: 'styles.css', rel: 'stylesheet'),
        meta(
          attributes: {
            'property': 'og:title',
            'content': 'Movement to Work – One Move, Many Possibilities',
          },
        ),
        meta(
          attributes: {
            'property': 'og:description',
            'content': 'One Move, Many Possibilities – a Movement to Work DWP programme campaign for 18–24 year-olds.',
          },
        ),
        meta(name: 'twitter:card', content: 'summary'),
      ],
      styles: [
        css('html, body').styles(
          width: 100.percent,
          minHeight: 100.vh,
          padding: .zero,
          margin: .zero,
        ),
      ],
      body: App(),
    ),
  );
}

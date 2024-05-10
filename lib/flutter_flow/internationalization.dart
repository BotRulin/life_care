import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['es', 'en', 'ca'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? esText = '',
    String? enText = '',
    String? caText = '',
  }) =>
      [esText, enText, caText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Login
  {
    '2sl65s96': {
      'es': 'Correo',
      'ca': 'Correu',
      'en': 'Mail',
    },
    'y33hndqq': {
      'es': 'Contraseña',
      'ca': 'Contrasenya',
      'en': 'Password',
    },
    'z44z0t27': {
      'es': 'No tengo cuenta',
      'ca': 'No tinc compte',
      'en': 'I do not have an account',
    },
    '6wh2eqma': {
      'es': 'Iniciar sesión',
      'ca': 'Inicia sessió',
      'en': 'Log in',
    },
    'y7xnk546': {
      'es': 'Inicio',
      'ca': 'Inici',
      'en': 'Home',
    },
  },
  // MainScreen
  {
    '2aqni8vh': {
      'es': 'Unirse a grupo',
      'ca': 'Unir-se a grup',
      'en': 'Join group',
    },
    'c0lqaavx': {
      'es': 'Nuevo grupo',
      'ca': 'Nou grup',
      'en': 'New group',
    },
    'fv9zmmd2': {
      'es': 'Perfil',
      'ca': 'Perfil',
      'en': 'Profile',
    },
    '7p4t4zcf': {
      'es': '  Opciones',
      'ca': '',
      'en': '',
    },
    'fotl9to9': {
      'es': 'Search for an item...',
      'ca': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'd21z4nju': {
      'es': 'Cancel',
      'ca': '',
      'en': '',
    },
    'c8cbhnj8': {
      'es': 'Inicio',
      'ca': 'Inici',
      'en': 'Home',
    },
  },
  // Register
  {
    'ezw1cf31': {
      'es': 'Correo',
      'ca': 'Correu',
      'en': 'Mail',
    },
    '42k3zf8p': {
      'es': 'Contraseña',
      'ca': 'Contrasenya',
      'en': 'Password',
    },
    'gt1o71v6': {
      'es': 'Repetir contraseña',
      'ca': 'Repetir contrasenya',
      'en': 'Repeat password',
    },
    'ym1o2383': {
      'es': 'Ya tengo una cuenta',
      'ca': 'Ja tinc un compte',
      'en': 'I already have an account',
    },
    '351jqsgb': {
      'es': 'Registrarse',
      'ca': 'Registrar-se',
      'en': 'Check in',
    },
    'gl2ns3hd': {
      'es': 'Inicio',
      'ca': 'Inici',
      'en': 'Home',
    },
  },
  // Perfil
  {
    'x7qbfkql': {
      'es': 'Perfil',
      'ca': 'Perfil',
      'en': 'Profile',
    },
    'jqqmxi8p': {
      'es': 'Correo',
      'ca': 'Correu',
      'en': 'Mail',
    },
    '9ptu5fr1': {
      'es': 'Cambiar contraseña',
      'ca': 'Canvia contrasenya',
      'en': 'Change Password',
    },
    'na5w3sqy': {
      'es': 'Cerrar Sesión',
      'ca': 'Tancar Sessió',
      'en': 'Sign off',
    },
    '1s6aob0s': {
      'es': 'Inicio',
      'ca': 'Inici',
      'en': 'Home',
    },
  },
  // Actividades
  {
    '138nte6e': {
      'es': 'Seleccionar fecha',
      'ca': 'Seleccionar data',
      'en': 'Select date',
    },
    'kyrrm0ot': {
      'es': 'Inicio',
      'ca': 'Inici',
      'en': 'Home',
    },
  },
  // ComponentePrincipal
  {
    'x900xyev': {
      'es': 'Unirse a grupo',
      'ca': 'Unir-se a grup',
      'en': 'Join group',
    },
    'rzekj22q': {
      'es': 'Cancelar',
      'ca': 'Cancel·lar',
      'en': 'Cancel',
    },
    'wum6rfld': {
      'es': 'Nuevo grupo',
      'ca': 'Nou grup',
      'en': 'New group',
    },
    'nw064ys6': {
      'es': 'Perfil',
      'ca': 'Perfil',
      'en': 'Profile',
    },
  },
  // UsuarioSalir
  {
    'wy223wmx': {
      'es': 'Añadir usuario al grupo',
      'ca': 'Afegir usuari al grup',
      'en': 'Add user to group',
    },
    'zqn9z2hk': {
      'es': 'Eliminar/Salir',
      'ca': 'Eliminar/Sortir',
      'en': 'Delete/Exit',
    },
  },
  // CorreoQR
  {
    '9cnrv90s': {
      'es': 'Añadir usuario al grupo',
      'ca': 'Afegir usuari al grup',
      'en': 'Add user to group',
    },
    'khmsu7ap': {
      'es': 'Añadir por correo',
      'ca': 'Afegir per correu',
      'en': 'Add by email',
    },
    'mriaysft': {
      'es': 'Generar QR',
      'ca': 'Generar QR',
      'en': 'Generate QR',
    },
  },
  // CrearGrupo
  {
    'b3yhsh3b': {
      'es': 'Nombre de grupo',
      'ca': 'Nom de grup',
      'en': 'Group name',
    },
    't2h60p78': {
      'es': 'Cancelar',
      'ca': 'Cancel·la',
      'en': 'Cancel',
    },
    '5gic8lug': {
      'es': 'Crear',
      'ca': 'Crear',
      'en': 'Create',
    },
  },
  // AnadirActividad
  {
    '4g8nlkzu': {
      'es': 'Nombre de actividad:',
      'ca': 'Nom d\'activitat:',
      'en': 'Activity name:',
    },
    'ps0r0732': {
      'es': 'Descripción:',
      'ca': 'Descripció:',
      'en': 'Description:',
    },
    '1fls7gj3': {
      'es': 'Añadidos:',
      'ca': 'Afegits:',
      'en': 'Added:',
    },
    'cmdzh0r8': {
      'es': 'Dejar como tarea programada',
      'ca': 'Deixar com a tasca programada',
      'en': 'Leave as scheduled task',
    },
    'beo6nlgm': {
      'es': 'Cancelar',
      'ca': 'Cancel·la',
      'en': 'Cancel',
    },
    'lvrz5qms': {
      'es': 'Crear',
      'ca': 'Crear',
      'en': 'Create',
    },
  },
  // Miscellaneous
  {
    'wo0w5pnr': {
      'es':
          'Permita que se acceda a la camara para poder acceder a las funcionalidades de la aplicación.',
      'ca':
          'Permeteu que s\'accedeixi a la càmera per poder accedir a les funcionalitats de l\'aplicació.',
      'en':
          'Allow the camera to be accessed in order to access the application\'s functionalities.',
    },
    'vwnjaqi2': {
      'es':
          'Permita que se acceda a las notificaciones para poder acceder a las funcionalidades de la aplicación.',
      'ca':
          'Permeteu que s\'accedeixi a les notificacions per poder accedir a les funcionalitats de l\'aplicació.',
      'en':
          'Allow notifications to be accessed in order to access the app\'s functionalities.',
    },
    '49p31vdn': {
      'es':
          'Permita que se acceda a la galeria para poder acceder a las funcionalidades de la aplicación.',
      'ca':
          'Permeteu que s\'accedeixi a la galeria per poder accedir a les funcionalitats de l\'aplicació.',
      'en':
          'Allow the gallery to be accessed to access the application\'s functionalities.',
    },
    'jtvymlz3': {
      'es':
          'Permita que se acceda al micrófono para poder acceder a las funcionalidades de la aplicación.',
      'ca':
          'Permeteu que s\'accedeixi al micròfon per poder accedir a les funcionalitats de l\'aplicació.',
      'en':
          'Allow the microphone to be accessed in order to access the application\'s functionalities.',
    },
    'iestzj5u': {
      'es':
          'Permita que se acceda a la localización para poder acceder a las funcionalidades de la aplicación.',
      'ca':
          'Permeteu que s\'accedeixi a la localització per poder accedir a les funcionalitats de l\'aplicació.',
      'en': 'Allow location access to access the app\'s features.',
    },
    'djep4njd': {
      'es':
          'Permita que se acceda al calendario para poder acceder a las funcionalidades de la aplicación.',
      'ca':
          'Permeteu que s\'accedeixi al calendari per poder accedir a les funcionalitats de l\'aplicació.',
      'en':
          'Allow the calendar to be accessed in order to access the application\'s functionalities.',
    },
    'yf6exwto': {
      'es': '',
      'ca': '',
      'en': '',
    },
    'muoyf8ws': {
      'es': '',
      'ca': '',
      'en': '',
    },
    'e03cnlsd': {
      'es': '',
      'ca': '',
      'en': '',
    },
    'f8iug2um': {
      'es': '',
      'ca': '',
      'en': '',
    },
    '3296drv4': {
      'es': '',
      'ca': '',
      'en': '',
    },
    'psuf3f2d': {
      'es': '',
      'ca': '',
      'en': '',
    },
    '5qe8awj3': {
      'es': '',
      'ca': '',
      'en': '',
    },
    'jze99zep': {
      'es': '',
      'ca': '',
      'en': '',
    },
    '78vieutd': {
      'es': '',
      'ca': '',
      'en': '',
    },
    'zav62x00': {
      'es': '',
      'ca': '',
      'en': '',
    },
    'dlgu2c4o': {
      'es': '',
      'ca': '',
      'en': '',
    },
    'dg7g9ew0': {
      'es': '',
      'ca': '',
      'en': '',
    },
    'kzxtzfoq': {
      'es': '',
      'ca': '',
      'en': '',
    },
    '4cb02dgq': {
      'es': '',
      'ca': '',
      'en': '',
    },
    'gdkhd2u6': {
      'es': '',
      'ca': '',
      'en': '',
    },
    'xk26w5n4': {
      'es': '',
      'ca': '',
      'en': '',
    },
    '5tilu246': {
      'es': '',
      'ca': '',
      'en': '',
    },
    '0aj4g7w1': {
      'es': '',
      'ca': '',
      'en': '',
    },
    'umizoly9': {
      'es': '',
      'ca': '',
      'en': '',
    },
    '875basgz': {
      'es': '',
      'ca': '',
      'en': '',
    },
    '9az07g0t': {
      'es': '',
      'ca': '',
      'en': '',
    },
    'fat7kvk2': {
      'es': '',
      'ca': '',
      'en': '',
    },
    'v6uukw17': {
      'es': '',
      'ca': '',
      'en': '',
    },
    'dchi3vhy': {
      'es': '',
      'ca': '',
      'en': '',
    },
    'selruhf9': {
      'es': '',
      'ca': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));

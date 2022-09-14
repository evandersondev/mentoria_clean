# Projeto realizado para a Mentoria de Clean Arquitecture junto ao FlutterRP


lib
 ├── core
 │   ├── core.dart
 │   ├── core_mapper.dart
 │   ├── error
 │   │   ├── error.dart
 │   │   ├── exceptions.dart
 │   │   └── failure.dart
 │   ├── localization
 │   │   ├── generated
 │   │   │   ├── strings.dart
 │   │   │   ├── strings_en.dart
 │   │   │   └── strings_id.dart
 │   │   ├── intl_en.arb
 │   │   ├── intl_id.arb
 │   │   ├── l10n.dart
 │   │   └── localization.dart
 │   └── usecase
 │       └── usecase.dart
 ├── data
 │   ├── data.dart
 │   ├── datasources
 │   │   ├── datasources.dart
 │   │   ├── local
 │   │   │   ├── data_helper.dart
 │   │   │   ├── local.dart
 │   │   │   └── pref_manager.dart
 │   │   └── remote
 │   │       ├── auth_remote_datasources.dart
 │   │       ├── model
 │   │       │   ├── auth
 │   │       │   │   ├── auth.dart
 │   │       │   │   ├── login_response.dart
 │   │       │   │   ├── register_response.dart
 │   │       │   │   └── users_response.dart
 │   │       │   └── model.dart
 │   │       ├── remote.dart
 │   │       └── services
 │   │           ├── dio_client.dart
 │   │           ├── dio_interceptor.dart
 │   │           ├── list_api.dart
 │   │           └── services.dart
 │   └── repositories
 │       ├── auth_repository_impl.dart
 │       └── repositories.dart
 ├── di
 │   └── di.dart
 ├── domain
 │   ├── domain.dart
 │   ├── entities
 │   │   ├── auth
 │   │   │   ├── auth.dart
 │   │   │   ├── login.dart
 │   │   │   ├── register.dart
 │   │   │   └── users.dart
 │   │   └── entities.dart
 │   ├── repositories
 │   │   ├── auth_repository.dart
 │   │   └── repositories.dart
 │   └── usecases
 │       ├── auth
 │       │   ├── auth.dart
 │       │   ├── get_users.dart
 │       │   ├── post_login.dart
 │       │   └── post_register.dart
 │       └── usecases.dart
 ├── main.dart
 ├── presentation
 │   ├── page
 │   │   ├── app_route.dart
 │   │   ├── auth
 │   │   │   ├── auth.dart
 │   │   │   ├── cubit
 │   │   │   │   ├── cubit.dart
 │   │   │   │   ├── login_cubit.dart
 │   │   │   │   ├── login_state.dart
 │   │   │   │   ├── register_cubit.dart
 │   │   │   │   └── register_state.dart
 │   │   │   ├── login_page.dart
 │   │   │   └── register_page.dart
 │   │   ├── main
 │   │   │   ├── cubit
 │   │   │   │   ├── cubit.dart
 │   │   │   │   └── navdrawer_cubit.dart
 │   │   │   ├── dashboard
 │   │   │   │   ├── cubit
 │   │   │   │   │   ├── cubit.dart
 │   │   │   │   │   ├── users_cubit.dart
 │   │   │   │   │   └── users_state.dart
 │   │   │   │   ├── dashboard.dart
 │   │   │   │   ├── dashboard_page.dart
 │   │   │   │   └── dashboard_success.dart
 │   │   │   ├── main.dart
 │   │   │   ├── main_page.dart
 │   │   │   ├── menu_drawer.dart
 │   │   │   └── settings
 │   │   │       ├── cubit
 │   │   │       │   ├── cubit.dart
 │   │   │       │   └── settings_cubit.dart
 │   │   │       ├── settings.dart
 │   │   │       └── settings_page.dart
 │   │   ├── pages.dart
 │   │   └── splashscreen
 │   │       └── splash_screen_page.dart
 │   ├── presentation.dart
 │   ├── resources
 │   │   ├── dimens.dart
 │   │   ├── images.dart
 │   │   ├── palette.dart
 │   │   ├── resources.dart
 │   │   └── styles.dart
 │   └── widgets
 │       ├── button.dart
 │       ├── button_notification.dart
 │       ├── button_text.dart
 │       ├── circle_image.dart
 │       ├── color_loaders.dart
 │       ├── drop_down.dart
 │       ├── empty.dart
 │       ├── loading.dart
 │       ├── my_appbar.dart
 │       ├── parent.dart
 │       ├── spacer_h.dart
 │       ├── spacer_v.dart
 │       ├── text_f.dart
 │       ├── toast.dart
 │       └── widgets.dart
 └── utils
     ├── ext
     │   ├── context.dart
     │   ├── ext.dart
     │   └── string.dart
     ├── helper
     │   ├── common.dart
     │   ├── constant.dart
     │   └── helper.dart
     └── utils.dart
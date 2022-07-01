# phoneauth

A new Flutter project.

## Getting Started

##For starter templete
```

|-- lib
|   |   |-- app
|   |   |   |-- config
|   |   |   |   |-- routes
|   |   |   |   |   |-- app_pages.dart
|   |   |   |   |   '-- app_routes.dart
|   |   |   |   '-- themes
|   |   |   |       '-- app_basic_theme.dart
|   |   |   |-- constants
|   |   |   |   '-- assets_constant.dart
|   |   |   |-- features
|   |   |   |   |-- authentication
|   |   |   |   |   |-- bindings
|   |   |   |   |   |   '-- authentication_binding.dart
|   |   |   |   |   |-- controllers
|   |   |   |   |   |   '-- authentication_controller.dart
|   |   |   |   |   '-- views
|   |   |   |   |       |-- components
|   |   |   |   |       |   |-- header_text.dart
|   |   |   |   |       |   |-- illustration_image.dart
|   |   |   |   |       |   |-- pin_auto_field.dart
|   |   |   |   |       |   |-- resend_button.dart
|   |   |   |   |       |   '-- verification_button.dart
|   |   |   |   |       '-- screens
|   |   |   |   |           '-- authentication_screen.dart
|   |   |   |   |-- home
|   |   |   |   |   |-- bindings
|   |   |   |   |   |   |-- home_binding.dart
|   |   |   |   |   |   '-- profile_binding.dart
|   |   |   |   |   |-- controllers
|   |   |   |   |   |   '-- home_controller.dart
|   |   |   |   |   '-- views
|   |   |   |   |       |-- components
|   |   |   |   |       |   |-- drawer.dart
|   |   |   |   |       |   |-- my_drawer_header.dart
|   |   |   |   |       |   '-- profile.dart
|   |   |   |   |       |-- profilecomponent
|   |   |   |   |       |   |-- appbar_widget.dart
|   |   |   |   |       |   |-- profile_widget.dart
|   |   |   |   |       |   |-- textfieldaddress_widget.dart
|   |   |   |   |       |   |-- textfieldname_widget.dart
|   |   |   |   |       |   '-- textfieldphone_widget.dart
|   |   |   |   |       |-- screens
|   |   |   |   |       |   
|   |   |   |   |       '-- views
|   |   |   |   |           |-- home_screen.dart
|   |   |   |   |           |-- profileedit.dart
|   |   |   |   |          
|   |   |   |   |-- login
|   |   |   |   |   |-- bindings
|   |   |   |   |   |   '-- login_binding.dart
|   |   |   |   |   |-- controllers
|   |   |   |   |   |   '-- login_controller.dart
|   |   |   |   |   '-- views
|   |   |   |   |       |-- components
|   |   |   |   |       |   |-- header_text.dart
|   |   |   |   |       |   |-- illustration_image.dart
|   |   |   |   |       |   |-- login_button.dart
|   |   |   |   |       |   |-- phone_number_field.dart
|   |   |   |   |       |   '-- registration_button.dart
|   |   |   |   |       '-- screens
|   |   |   |   |           '-- login_screen.dart
|   |   |   |   |-- registration
|   |   |   |   |   |-- bindings
|   |   |   |   |   |   '-- registration_binding.dart
|   |   |   |   |   |-- controllers
|   |   |   |   |   |   '-- registration_controller.dart
|   |   |   |   |   '-- views
|   |   |   |   |       |-- components
|   |   |   |   |       |   |-- header_text.dart
|   |   |   |   |       |   |-- illustration_image.dart
|   |   |   |   |       |   |-- location_field.dart
|   |   |   |   |       |   |-- login_button.dart
|   |   |   |   |       |   |-- name_field.dart
|   |   |   |   |       |   |-- phone_number_field.dart
|   |   |   |   |       |   |-- privacypolicy.dart
|   |   |   |   |       |   '-- register_button.dart
|   |   |   |   |       '-- screens
|   |   |   |   |           |-- nolocationpermission.dart
|   |   |   |   |           '-- registration_screen.dart
|   |   |   |   '-- splash
|   |   |   |       '-- views
|   |   |   |           '-- screens
|   |   |   |               '-- splash_screen.dart
|   |   |   |
|   |   |   '-- utils
|   |   |       '-- services
|   |   |           |-- firebase_services.dart
|   |   |           |-- notificationservice
|   |   |           |   |-- callnotification.dart
|   |   |           |   '-- local_notification_service.dart
|   |   |           |-- speechtotext.dart
|   |   |           '-- usercurrentlocation.dart
|   |   |-- main.dart
```

##root file and folders name for full project
```
|-- lib
|   |   |-- app
|   |   |   |-- config
|   |   |   |   |-- routes
|   |   |   |   |   |-- app_pages.dart
|   |   |   |   |   '-- app_routes.dart
|   |   |   |   '-- themes
|   |   |   |       '-- app_basic_theme.dart
|   |   |   |-- constants
|   |   |   |   '-- assets_constant.dart
|   |   |   |-- features
|   |   |   |   |-- authentication
|   |   |   |   |   |-- bindings
|   |   |   |   |   |   '-- authentication_binding.dart
|   |   |   |   |   |-- controllers
|   |   |   |   |   |   '-- authentication_controller.dart
|   |   |   |   |   '-- views
|   |   |   |   |       |-- components
|   |   |   |   |       |   |-- header_text.dart
|   |   |   |   |       |   |-- illustration_image.dart
|   |   |   |   |       |   |-- pin_auto_field.dart
|   |   |   |   |       |   |-- resend_button.dart
|   |   |   |   |       |   '-- verification_button.dart
|   |   |   |   |       '-- screens
|   |   |   |   |           '-- authentication_screen.dart
|   |   |   |   |-- home
|   |   |   |   |   |-- bindings
|   |   |   |   |   |   |-- home_binding.dart
|   |   |   |   |   |   
|   |   |   |   |   |-- controllers
|   |   |   |   |   |   '-- home_controller.dart
|   |   |   |   |   '-- views
|   |   |   |   |       |-- components
|   |   |   |   |       |   |-- drawer.dart
|   |   |   |   |       |   |-- my_drawer_header.dart
|   |   |   |   |       |   '-- profile.dart
|   |   |   |   |       |-- profilecomponent
|   |   |   |   |       |   |-- appbar_widget.dart
|   |   |   |   |       |   |-- profile_widget.dart
|   |   |   |   |       |   |-- textfieldaddress_widget.dart
|   |   |   |   |       |   |-- textfieldname_widget.dart
|   |   |   |   |       |   '-- textfieldphone_widget.dart
|   |   |   |   |       |-- screens
|   |   |   |   |       |   |-- job
|   |   |   |   |       |   |   |-- jobmap.dart
|   |   |   |   |       |   |   |-- jobnearby.dart
|   |   |   |   |       |   |   |-- models
|   |   |   |   |       |   |   |   '-- job.dart
|   |   |   |   |       |   |   '-- widgets
|   |   |   |   |       |   |       '-- searchextension
|   |   |   |   |       |   |           |-- core
|   |   |   |   |       |   |           |   '-- api.dart
|   |   |   |   |       |   |           |-- models
|   |   |   |   |       |   |           |   '-- address.dart
|   |   |   |   |       |   |           '-- place_search.dart
|   |   |   |   |       |   |-- place
|   |   |   |   |       |   |   '-- view
|   |   |   |   |       |   |       |-- google_map_api.dart
|   |   |   |   |       |   |       |-- google_map_page.dart
|   |   |   |   |       |   |       '-- location_tracking.dart
|   |   |   |   |       |   |-- service
|   |   |   |   |       |   |   |-- animation
|   |   |   |   |       |   |   |   '-- FadeAnimation.dart
|   |   |   |   |       |   |   |-- model
|   |   |   |   |       |   |   |   '-- service.dart
|   |   |   |   |       |   |   '-- view
|   |   |   |   |       |   |       '-- select_service.dart
|   |   |   |   |       |   |-- store
|   |   |   |   |       |   |   '-- view
|   |   |   |   |       |   |       '-- store_view.dart
|   |   |   |   |       |   '-- updates
|   |   |   |   |       |       |-- controller
|   |   |   |   |       |       |   '-- updatecontroller.dart
|   |   |   |   |       |       |-- model
|   |   |   |   |       |       |   '-- updates_model.dart
|   |   |   |   |       |       '-- view
|   |   |   |   |       |           |-- updates.dart
|   |   |   |   |       |           '-- widgets
|   |   |   |   |       |               |-- custombartab.dart
|   |   |   |   |       |               '-- md2indicator.dart
|   |   |   |   |       '-- views
|   |   |   |   |           |-- home_screen.dart
|   |   |   |   |           |-- profileedit.dart
|   |   |   |   |           '-- send_money.dart
|   |   |   |   |-- login
|   |   |   |   |   |-- bindings
|   |   |   |   |   |   '-- login_binding.dart
|   |   |   |   |   |-- controllers
|   |   |   |   |   |   '-- login_controller.dart
|   |   |   |   |   '-- views
|   |   |   |   |       |-- components
|   |   |   |   |       |   |-- header_text.dart
|   |   |   |   |       |   |-- illustration_image.dart
|   |   |   |   |       |   |-- login_button.dart
|   |   |   |   |       |   |-- phone_number_field.dart
|   |   |   |   |       |   '-- registration_button.dart
|   |   |   |   |       '-- screens
|   |   |   |   |           '-- login_screen.dart
|   |   |   |   |-- registration
|   |   |   |   |   |-- bindings
|   |   |   |   |   |   '-- registration_binding.dart
|   |   |   |   |   |-- controllers
|   |   |   |   |   |   '-- registration_controller.dart
|   |   |   |   |   '-- views
|   |   |   |   |       |-- components
|   |   |   |   |       |   |-- header_text.dart
|   |   |   |   |       |   |-- illustration_image.dart
|   |   |   |   |       |   |-- location_field.dart
|   |   |   |   |       |   |-- login_button.dart
|   |   |   |   |       |   |-- name_field.dart
|   |   |   |   |       |   |-- phone_number_field.dart
|   |   |   |   |       |   |-- privacypolicy.dart
|   |   |   |   |       |   '-- register_button.dart
|   |   |   |   |       '-- screens
|   |   |   |   |           |-- nolocationpermission.dart
|   |   |   |   |           '-- registration_screen.dart
|   |   |   |   '-- splash
|   |   |   |       '-- views
|   |   |   |           '-- screens
|   |   |   |               '-- splash_screen.dart
|   |   |   |-- implements
|   |   |   |   |-- dial_button.dart
|   |   |   |   |-- dial_user_pic.dart
|   |   |   |   |-- rounded_button.dart
|   |   |   |   |-- size_config.dart
|   |   |   |   '-- videocall
|   |   |   |       |-- configs
|   |   |   |       |   '-- agora_configs.dart
|   |   |   |       |-- constants
|   |   |   |       |   '-- strings.dart
|   |   |   |       |-- enum
|   |   |   |       |   |-- user_state.dart
|   |   |   |       |   '-- view_state.dart
|   |   |   |       |-- models
|   |   |   |       |   |-- call.dart
|   |   |   |       |   |-- contact.dart
|   |   |   |       |   |-- log.dart
|   |   |   |       |   '-- user_model.dart
|   |   |   |       |-- provider
|   |   |   |       |   |-- image_upload_provider.dart
|   |   |   |       |   '-- user_provider.dart
|   |   |   |       |-- resources
|   |   |   |       |   |-- auth_methods.dart
|   |   |   |       |   |-- call_methods.dart
|   |   |   |       |   '-- local_db
|   |   |   |       |       |-- db
|   |   |   |       |       |   |-- hive_methods.dart
|   |   |   |       |       |   '-- sqlite_methods.dart
|   |   |   |       |       |-- interface
|   |   |   |       |       |   '-- log_interface.dart
|   |   |   |       |       '-- repository
|   |   |   |       |           '-- log_repository.dart
|   |   |   |       |-- screens
|   |   |   |       |   |-- callscreens
|   |   |   |       |   |   |-- audiocall_screen.dart
|   |   |   |       |   |   |-- call_screen.dart
|   |   |   |       |   |   |-- dialer_feb.dart
|   |   |   |       |   |   '-- pickup
|   |   |   |       |   |       |-- pickup_layout.dart
|   |   |   |       |   |       '-- pickup_screen.dart
|   |   |   |       |   |-- chatscreens
|   |   |   |       |   |   '-- widgets
|   |   |   |       |   |       '-- cached_image.dart
|   |   |   |       |   |-- configs
|   |   |   |       |   |   '-- agora_configs.dart
|   |   |   |       |   |-- home_screens.dart
|   |   |   |       |   '-- pageviews
|   |   |   |       |       |-- chats
|   |   |   |       |       |   '-- widgets
|   |   |   |       |       |       |-- new_chat_button.dart
|   |   |   |       |       |       |-- online_dot_indicator.dart
|   |   |   |       |       |       |-- quiet_box.dart
|   |   |   |       |       |       |-- shimmering_logo.dart
|   |   |   |       |       |       |-- user_circle.dart
|   |   |   |       |       |       '-- user_details_container.dart
|   |   |   |       |       '-- logs
|   |   |   |       |           |-- log_screen.dart
|   |   |   |       |           '-- widgets
|   |   |   |       |               |-- floating_column.dart
|   |   |   |       |               '-- log_list_container.dart
|   |   |   |       |-- utils
|   |   |   |       |   |-- call_utilities.dart
|   |   |   |       |   |-- permissions.dart
|   |   |   |       |   |-- universal_variables.dart
|   |   |   |       |   |-- utilities.dart
|   |   |   |       |   '-- utils.dart
|   |   |   |       '-- widgets
|   |   |   |           |-- appbar.dart
|   |   |   |           |-- color_utils.dart
|   |   |   |           |-- common_methods.dart
|   |   |   |           | (5 more...)
|   |   |   |           |-- quiet_box.dart
|   |   |   |           |-- skype_appbar.dart
|   |   |   |           '-- timer_widget.dart
|   |   |   '-- utils
|   |   |       '-- services
|   |   |           |-- firebase_services.dart
|   |   |           |-- notificationservice
|   |   |           |   |-- callnotification.dart
|   |   |           |   '-- local_notification_service.dart
|   |   |           |-- speechtotext.dart
|   |   |           '-- usercurrentlocation.dart
|  . |   |-- main.dart
```

library autoscaler_v1beta2_api.browser;

import "package:google_oauth2_client/google_oauth2_browser.dart" as oauth;

import 'package:google_autoscaler_v1beta2_api/src/browser_client.dart';
import "package:google_autoscaler_v1beta2_api/autoscaler_v1beta2_api_client.dart";

/** The Google Compute Engine Autoscaler API provides autoscaling for groups of Cloud VMs. */
@deprecated
class Autoscaler extends Client with BrowserClient {

  /** OAuth Scope2: View and manage your Google Compute Engine resources */
  static const String COMPUTE_SCOPE = "https://www.googleapis.com/auth/compute";

  /** OAuth Scope2: View your Google Compute Engine resources */
  static const String COMPUTE_READONLY_SCOPE = "https://www.googleapis.com/auth/compute.readonly";

  final oauth.OAuth2 auth;

  Autoscaler([oauth.OAuth2 this.auth]);
}

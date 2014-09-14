part of autoscaler_v1beta2_api;

class AutoscalersResource_ {

  final Client _client;

  AutoscalersResource_(Client client) :
      _client = client;

  /**
   * Deletes the specified Autoscaler resource.
   *
   * [project] - Project ID of Autoscaler resource.
   *
   * [zone] - Zone name of Autoscaler resource.
   *
   * [autoscaler] - Name of the Autoscaler resource.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Operation> delete(core.String project, core.String zone, core.String autoscaler, {core.Map optParams}) {
    var url = "projects/{project}/zones/{zone}/autoscalers/{autoscaler}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (autoscaler == null) paramErrors.add("autoscaler is required");
    if (autoscaler != null) urlParams["autoscaler"] = autoscaler;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (zone == null) paramErrors.add("zone is required");
    if (zone != null) urlParams["zone"] = zone;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Operation.fromJson(data));
  }

  /**
   * Gets the specified Autoscaler resource.
   *
   * [project] - Project ID of Autoscaler resource.
   *
   * [zone] - Zone name of Autoscaler resource.
   *
   * [autoscaler] - Name of the Autoscaler resource.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Autoscaler> get(core.String project, core.String zone, core.String autoscaler, {core.Map optParams}) {
    var url = "projects/{project}/zones/{zone}/autoscalers/{autoscaler}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (autoscaler == null) paramErrors.add("autoscaler is required");
    if (autoscaler != null) urlParams["autoscaler"] = autoscaler;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (zone == null) paramErrors.add("zone is required");
    if (zone != null) urlParams["zone"] = zone;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Autoscaler.fromJson(data));
  }

  /**
   * Adds new Autoscaler resource.
   *
   * [request] - Autoscaler to send in this request
   *
   * [project] - Project ID of Autoscaler resource.
   *
   * [zone] - Zone name of Autoscaler resource.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Operation> insert(Autoscaler request, core.String project, core.String zone, {core.Map optParams}) {
    var url = "projects/{project}/zones/{zone}/autoscalers";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (zone == null) paramErrors.add("zone is required");
    if (zone != null) urlParams["zone"] = zone;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Operation.fromJson(data));
  }

  /**
   * Lists all Autoscaler resources in this zone.
   *
   * [project] - Project ID of Autoscaler resource.
   *
   * [zone] - Zone name of Autoscaler resource.
   *
   * [filter]
   *
   * [maxResults]
   *   Default: 500
   *   Minimum: 0
   *   Maximum: 500
   *
   * [pageToken]
   *
   * [optParams] - Additional query parameters
   */
  async.Future<AutoscalerListResponse> list(core.String project, core.String zone, {core.String filter, core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "projects/{project}/zones/{zone}/autoscalers";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (filter != null) queryParams["filter"] = filter;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (zone == null) paramErrors.add("zone is required");
    if (zone != null) urlParams["zone"] = zone;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new AutoscalerListResponse.fromJson(data));
  }

  /**
   * Update the entire content of the Autoscaler resource. This method supports patch semantics.
   *
   * [request] - Autoscaler to send in this request
   *
   * [project] - Project ID of Autoscaler resource.
   *
   * [zone] - Zone name of Autoscaler resource.
   *
   * [autoscaler] - Name of the Autoscaler resource.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Operation> patch(Autoscaler request, core.String project, core.String zone, core.String autoscaler, {core.Map optParams}) {
    var url = "projects/{project}/zones/{zone}/autoscalers/{autoscaler}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (autoscaler == null) paramErrors.add("autoscaler is required");
    if (autoscaler != null) urlParams["autoscaler"] = autoscaler;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (zone == null) paramErrors.add("zone is required");
    if (zone != null) urlParams["zone"] = zone;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Operation.fromJson(data));
  }

  /**
   * Update the entire content of the Autoscaler resource.
   *
   * [request] - Autoscaler to send in this request
   *
   * [project] - Project ID of Autoscaler resource.
   *
   * [zone] - Zone name of Autoscaler resource.
   *
   * [autoscaler] - Name of the Autoscaler resource.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Operation> update(Autoscaler request, core.String project, core.String zone, core.String autoscaler, {core.Map optParams}) {
    var url = "projects/{project}/zones/{zone}/autoscalers/{autoscaler}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (autoscaler == null) paramErrors.add("autoscaler is required");
    if (autoscaler != null) urlParams["autoscaler"] = autoscaler;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (zone == null) paramErrors.add("zone is required");
    if (zone != null) urlParams["zone"] = zone;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Operation.fromJson(data));
  }
}

class ZoneOperationsResource_ {

  final Client _client;

  ZoneOperationsResource_(Client client) :
      _client = client;

  /**
   * Deletes the specified zone-specific operation resource.
   *
   * [project]
   *
   * [zone]
   *
   * [operation]
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String project, core.String zone, core.String operation, {core.Map optParams}) {
    var url = "{project}/zones/{zone}/operations/{operation}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (operation == null) paramErrors.add("operation is required");
    if (operation != null) urlParams["operation"] = operation;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (zone == null) paramErrors.add("zone is required");
    if (zone != null) urlParams["zone"] = zone;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Retrieves the specified zone-specific operation resource.
   *
   * [project]
   *
   * [zone]
   *
   * [operation]
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Operation> get(core.String project, core.String zone, core.String operation, {core.Map optParams}) {
    var url = "{project}/zones/{zone}/operations/{operation}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (operation == null) paramErrors.add("operation is required");
    if (operation != null) urlParams["operation"] = operation;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (zone == null) paramErrors.add("zone is required");
    if (zone != null) urlParams["zone"] = zone;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Operation.fromJson(data));
  }

  /**
   * Retrieves the list of operation resources contained within the specified zone.
   *
   * [project]
   *
   * [zone]
   *
   * [filter]
   *
   * [maxResults]
   *   Default: 500
   *   Minimum: 0
   *   Maximum: 500
   *
   * [pageToken]
   *
   * [optParams] - Additional query parameters
   */
  async.Future<OperationList> list(core.String project, core.String zone, {core.String filter, core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "{project}/zones/{zone}/operations";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (filter != null) queryParams["filter"] = filter;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (zone == null) paramErrors.add("zone is required");
    if (zone != null) urlParams["zone"] = zone;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new OperationList.fromJson(data));
  }
}


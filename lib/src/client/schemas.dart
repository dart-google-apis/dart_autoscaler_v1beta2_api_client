part of autoscaler_v1beta2_api;

/** Cloud Autoscaler resource. */
class Autoscaler {

  /** Configuration parameters for autoscaling algorithm. */
  AutoscalingPolicy autoscalingPolicy;

  /** [Output Only] Creation timestamp in RFC3339 text format. */
  core.String creationTimestamp;

  /** An optional textual description of the resource provided by the client. */
  core.String description;

  /** [Output Only] Unique identifier for the resource; defined by the server. */
  core.String id;

  /** Name of the Autoscaler resource. Must be unique per project and zone. */
  core.String name;

  /** [Output Only] A self-link to the Autoscaler configuration resource. */
  core.String selfLink;

  /** URL to the entity which will be autoscaled. Currently the only supported value is ReplicaPool?s URL. Note: it is illegal to specify multiple Autoscalers for the same target. */
  core.String target;

  /** Create new Autoscaler from JSON data */
  Autoscaler.fromJson(core.Map json) {
    if (json.containsKey("autoscalingPolicy")) {
      autoscalingPolicy = new AutoscalingPolicy.fromJson(json["autoscalingPolicy"]);
    }
    if (json.containsKey("creationTimestamp")) {
      creationTimestamp = json["creationTimestamp"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("target")) {
      target = json["target"];
    }
  }

  /** Create JSON Object for Autoscaler */
  core.Map toJson() {
    var output = new core.Map();

    if (autoscalingPolicy != null) {
      output["autoscalingPolicy"] = autoscalingPolicy.toJson();
    }
    if (creationTimestamp != null) {
      output["creationTimestamp"] = creationTimestamp;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (target != null) {
      output["target"] = target;
    }

    return output;
  }

  /** Return String representation of Autoscaler */
  core.String toString() => JSON.encode(this.toJson());

}

class AutoscalerListResponse {

  /** Autoscaler resources. */
  core.List<Autoscaler> items;

  /** [Output only] A token used to continue a truncated list request. */
  core.String nextPageToken;

  /** Create new AutoscalerListResponse from JSON data */
  AutoscalerListResponse.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Autoscaler.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for AutoscalerListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of AutoscalerListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** Cloud Autoscaler policy. */
class AutoscalingPolicy {

  /** The number of seconds that the Autoscaler should wait between two succeeding changes to the number of virtual machines. You should define an interval that is at least as long as the initialization time of a virtual machine and the time it may take for replica pool to create the virtual machine. The default is 60 seconds. */
  core.int coolDownPeriodSec;

  /** Exactly one utilization policy should be provided. Configuration parameters of CPU based autoscaling policy. */
  AutoscalingPolicyCpuUtilization cpuUtilization;

  /** Configuration parameters of autoscaling based on custom metric. */
  core.List<AutoscalingPolicyCustomMetricUtilization> customMetricUtilizations;

  /** Configuration parameters of autoscaling based on load balancer. */
  AutoscalingPolicyLoadBalancingUtilization loadBalancingUtilization;

  /** The maximum number of replicas that the Autoscaler can scale up to. */
  core.int maxNumReplicas;

  /** The minimum number of replicas that the Autoscaler can scale down to. */
  core.int minNumReplicas;

  /** Create new AutoscalingPolicy from JSON data */
  AutoscalingPolicy.fromJson(core.Map json) {
    if (json.containsKey("coolDownPeriodSec")) {
      coolDownPeriodSec = json["coolDownPeriodSec"];
    }
    if (json.containsKey("cpuUtilization")) {
      cpuUtilization = new AutoscalingPolicyCpuUtilization.fromJson(json["cpuUtilization"]);
    }
    if (json.containsKey("customMetricUtilizations")) {
      customMetricUtilizations = json["customMetricUtilizations"].map((customMetricUtilizationsItem) => new AutoscalingPolicyCustomMetricUtilization.fromJson(customMetricUtilizationsItem)).toList();
    }
    if (json.containsKey("loadBalancingUtilization")) {
      loadBalancingUtilization = new AutoscalingPolicyLoadBalancingUtilization.fromJson(json["loadBalancingUtilization"]);
    }
    if (json.containsKey("maxNumReplicas")) {
      maxNumReplicas = json["maxNumReplicas"];
    }
    if (json.containsKey("minNumReplicas")) {
      minNumReplicas = json["minNumReplicas"];
    }
  }

  /** Create JSON Object for AutoscalingPolicy */
  core.Map toJson() {
    var output = new core.Map();

    if (coolDownPeriodSec != null) {
      output["coolDownPeriodSec"] = coolDownPeriodSec;
    }
    if (cpuUtilization != null) {
      output["cpuUtilization"] = cpuUtilization.toJson();
    }
    if (customMetricUtilizations != null) {
      output["customMetricUtilizations"] = customMetricUtilizations.map((customMetricUtilizationsItem) => customMetricUtilizationsItem.toJson()).toList();
    }
    if (loadBalancingUtilization != null) {
      output["loadBalancingUtilization"] = loadBalancingUtilization.toJson();
    }
    if (maxNumReplicas != null) {
      output["maxNumReplicas"] = maxNumReplicas;
    }
    if (minNumReplicas != null) {
      output["minNumReplicas"] = minNumReplicas;
    }

    return output;
  }

  /** Return String representation of AutoscalingPolicy */
  core.String toString() => JSON.encode(this.toJson());

}

/** CPU utilization policy. */
class AutoscalingPolicyCpuUtilization {

  /** The target utilization that the Autoscaler should maintain. It is represented as a fraction of used cores. For example: 6 cores used in 8-core VM are represented here as 0.75. Must be a float value between (0, 1]. If not defined, the default is 0.8. */
  core.num utilizationTarget;

  /** Create new AutoscalingPolicyCpuUtilization from JSON data */
  AutoscalingPolicyCpuUtilization.fromJson(core.Map json) {
    if (json.containsKey("utilizationTarget")) {
      utilizationTarget = json["utilizationTarget"];
    }
  }

  /** Create JSON Object for AutoscalingPolicyCpuUtilization */
  core.Map toJson() {
    var output = new core.Map();

    if (utilizationTarget != null) {
      output["utilizationTarget"] = utilizationTarget;
    }

    return output;
  }

  /** Return String representation of AutoscalingPolicyCpuUtilization */
  core.String toString() => JSON.encode(this.toJson());

}

/** Custom utilization metric policy. */
class AutoscalingPolicyCustomMetricUtilization {

  /** Identifier of the metric. It should be a Cloud Monitoring metric. The metric can not have negative values. The metric should be an utilization metric (increasing number of VMs handling requests x times should reduce average value of the metric roughly x times). For example you could use: compute.googleapis.com/instance/network/received_bytes_count. */
  core.String metric;

  /** Target value of the metric which Autoscaler should maintain. Must be a positive value. */
  core.num utilizationTarget;

  /** Create new AutoscalingPolicyCustomMetricUtilization from JSON data */
  AutoscalingPolicyCustomMetricUtilization.fromJson(core.Map json) {
    if (json.containsKey("metric")) {
      metric = json["metric"];
    }
    if (json.containsKey("utilizationTarget")) {
      utilizationTarget = json["utilizationTarget"];
    }
  }

  /** Create JSON Object for AutoscalingPolicyCustomMetricUtilization */
  core.Map toJson() {
    var output = new core.Map();

    if (metric != null) {
      output["metric"] = metric;
    }
    if (utilizationTarget != null) {
      output["utilizationTarget"] = utilizationTarget;
    }

    return output;
  }

  /** Return String representation of AutoscalingPolicyCustomMetricUtilization */
  core.String toString() => JSON.encode(this.toJson());

}

/** Load balancing utilization policy. */
class AutoscalingPolicyLoadBalancingUtilization {

  /** Fraction of backend capacity utilization (set in HTTP load balancing configuration) that Autoscaler should maintain. Must be a positive float value. If not defined, the default is 0.8. For example if your maxRatePerInstance capacity (in HTTP Load Balancing configuration) is set at 10 and you would like to keep number of instances such that each instance receives 7 QPS on average, set this to 0.7. */
  core.num utilizationTarget;

  /** Create new AutoscalingPolicyLoadBalancingUtilization from JSON data */
  AutoscalingPolicyLoadBalancingUtilization.fromJson(core.Map json) {
    if (json.containsKey("utilizationTarget")) {
      utilizationTarget = json["utilizationTarget"];
    }
  }

  /** Create JSON Object for AutoscalingPolicyLoadBalancingUtilization */
  core.Map toJson() {
    var output = new core.Map();

    if (utilizationTarget != null) {
      output["utilizationTarget"] = utilizationTarget;
    }

    return output;
  }

  /** Return String representation of AutoscalingPolicyLoadBalancingUtilization */
  core.String toString() => JSON.encode(this.toJson());

}

class Operation {

  core.String clientOperationId;

  core.String creationTimestamp;

  core.String endTime;

  OperationError error;

  core.String httpErrorMessage;

  core.int httpErrorStatusCode;

  core.String id;

  core.String insertTime;

  /** Type of the resource. */
  core.String kind;

  core.String name;

  core.String operationType;

  core.int progress;

  core.String region;

  core.String selfLink;

  core.String startTime;

  core.String status;

  core.String statusMessage;

  core.String targetId;

  core.String targetLink;

  core.String user;

  core.List<OperationWarnings> warnings;

  core.String zone;

  /** Create new Operation from JSON data */
  Operation.fromJson(core.Map json) {
    if (json.containsKey("clientOperationId")) {
      clientOperationId = json["clientOperationId"];
    }
    if (json.containsKey("creationTimestamp")) {
      creationTimestamp = json["creationTimestamp"];
    }
    if (json.containsKey("endTime")) {
      endTime = json["endTime"];
    }
    if (json.containsKey("error")) {
      error = new OperationError.fromJson(json["error"]);
    }
    if (json.containsKey("httpErrorMessage")) {
      httpErrorMessage = json["httpErrorMessage"];
    }
    if (json.containsKey("httpErrorStatusCode")) {
      httpErrorStatusCode = json["httpErrorStatusCode"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("insertTime")) {
      insertTime = json["insertTime"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("operationType")) {
      operationType = json["operationType"];
    }
    if (json.containsKey("progress")) {
      progress = json["progress"];
    }
    if (json.containsKey("region")) {
      region = json["region"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("startTime")) {
      startTime = json["startTime"];
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
    if (json.containsKey("statusMessage")) {
      statusMessage = json["statusMessage"];
    }
    if (json.containsKey("targetId")) {
      targetId = json["targetId"];
    }
    if (json.containsKey("targetLink")) {
      targetLink = json["targetLink"];
    }
    if (json.containsKey("user")) {
      user = json["user"];
    }
    if (json.containsKey("warnings")) {
      warnings = json["warnings"].map((warningsItem) => new OperationWarnings.fromJson(warningsItem)).toList();
    }
    if (json.containsKey("zone")) {
      zone = json["zone"];
    }
  }

  /** Create JSON Object for Operation */
  core.Map toJson() {
    var output = new core.Map();

    if (clientOperationId != null) {
      output["clientOperationId"] = clientOperationId;
    }
    if (creationTimestamp != null) {
      output["creationTimestamp"] = creationTimestamp;
    }
    if (endTime != null) {
      output["endTime"] = endTime;
    }
    if (error != null) {
      output["error"] = error.toJson();
    }
    if (httpErrorMessage != null) {
      output["httpErrorMessage"] = httpErrorMessage;
    }
    if (httpErrorStatusCode != null) {
      output["httpErrorStatusCode"] = httpErrorStatusCode;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (insertTime != null) {
      output["insertTime"] = insertTime;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (operationType != null) {
      output["operationType"] = operationType;
    }
    if (progress != null) {
      output["progress"] = progress;
    }
    if (region != null) {
      output["region"] = region;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (startTime != null) {
      output["startTime"] = startTime;
    }
    if (status != null) {
      output["status"] = status;
    }
    if (statusMessage != null) {
      output["statusMessage"] = statusMessage;
    }
    if (targetId != null) {
      output["targetId"] = targetId;
    }
    if (targetLink != null) {
      output["targetLink"] = targetLink;
    }
    if (user != null) {
      output["user"] = user;
    }
    if (warnings != null) {
      output["warnings"] = warnings.map((warningsItem) => warningsItem.toJson()).toList();
    }
    if (zone != null) {
      output["zone"] = zone;
    }

    return output;
  }

  /** Return String representation of Operation */
  core.String toString() => JSON.encode(this.toJson());

}

class OperationError {

  core.List<OperationErrorErrors> errors;

  /** Create new OperationError from JSON data */
  OperationError.fromJson(core.Map json) {
    if (json.containsKey("errors")) {
      errors = json["errors"].map((errorsItem) => new OperationErrorErrors.fromJson(errorsItem)).toList();
    }
  }

  /** Create JSON Object for OperationError */
  core.Map toJson() {
    var output = new core.Map();

    if (errors != null) {
      output["errors"] = errors.map((errorsItem) => errorsItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of OperationError */
  core.String toString() => JSON.encode(this.toJson());

}

class OperationErrorErrors {

  core.String code;

  core.String location;

  core.String message;

  /** Create new OperationErrorErrors from JSON data */
  OperationErrorErrors.fromJson(core.Map json) {
    if (json.containsKey("code")) {
      code = json["code"];
    }
    if (json.containsKey("location")) {
      location = json["location"];
    }
    if (json.containsKey("message")) {
      message = json["message"];
    }
  }

  /** Create JSON Object for OperationErrorErrors */
  core.Map toJson() {
    var output = new core.Map();

    if (code != null) {
      output["code"] = code;
    }
    if (location != null) {
      output["location"] = location;
    }
    if (message != null) {
      output["message"] = message;
    }

    return output;
  }

  /** Return String representation of OperationErrorErrors */
  core.String toString() => JSON.encode(this.toJson());

}

class OperationWarnings {

  core.String code;

  core.List<OperationWarningsData> data;

  core.String message;

  /** Create new OperationWarnings from JSON data */
  OperationWarnings.fromJson(core.Map json) {
    if (json.containsKey("code")) {
      code = json["code"];
    }
    if (json.containsKey("data")) {
      data = json["data"].map((dataItem) => new OperationWarningsData.fromJson(dataItem)).toList();
    }
    if (json.containsKey("message")) {
      message = json["message"];
    }
  }

  /** Create JSON Object for OperationWarnings */
  core.Map toJson() {
    var output = new core.Map();

    if (code != null) {
      output["code"] = code;
    }
    if (data != null) {
      output["data"] = data.map((dataItem) => dataItem.toJson()).toList();
    }
    if (message != null) {
      output["message"] = message;
    }

    return output;
  }

  /** Return String representation of OperationWarnings */
  core.String toString() => JSON.encode(this.toJson());

}

class OperationWarningsData {

  core.String key;

  core.String value;

  /** Create new OperationWarningsData from JSON data */
  OperationWarningsData.fromJson(core.Map json) {
    if (json.containsKey("key")) {
      key = json["key"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for OperationWarningsData */
  core.Map toJson() {
    var output = new core.Map();

    if (key != null) {
      output["key"] = key;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of OperationWarningsData */
  core.String toString() => JSON.encode(this.toJson());

}

class OperationList {

  core.String id;

  core.List<Operation> items;

  /** Type of resource. */
  core.String kind;

  core.String nextPageToken;

  core.String selfLink;

  /** Create new OperationList from JSON data */
  OperationList.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Operation.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for OperationList */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of OperationList */
  core.String toString() => JSON.encode(this.toJson());

}

core.Map _mapMap(core.Map source, [core.Object convert(core.Object source) = null]) {
  assert(source != null);
  var result = new dart_collection.LinkedHashMap();
  source.forEach((core.String key, value) {
    assert(key != null);
    if(convert == null) {
      result[key] = value;
    } else {
      result[key] = convert(value);
    }
  });
  return result;
}

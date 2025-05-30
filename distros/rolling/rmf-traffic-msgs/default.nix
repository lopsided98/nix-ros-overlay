
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-rmf-traffic-msgs";
  version = "3.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_internal_msgs-release/archive/release/rolling/rmf_traffic_msgs/3.5.0-1.tar.gz";
    name = "3.5.0-1.tar.gz";
    sha256 = "d3996ee584e99f5f3f4d2ff0591313c5fbba1402f0678762ce2190ec93ecee77";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "A package containing messages used by the RMF traffic management system.";
    license = with lib.licenses; [ asl20 ];
  };
}

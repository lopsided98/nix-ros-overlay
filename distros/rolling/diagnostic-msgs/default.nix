
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-diagnostic-msgs";
  version = "5.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/rolling/diagnostic_msgs/5.2.0-1.tar.gz";
    name = "5.2.0-1.tar.gz";
    sha256 = "622ef8a9077b19006ac5a0166947ee26dd53614b4c0ae43c9ba53aa7a3db308a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''A package containing some diagnostics related message and service definitions.'';
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-diagnostic-msgs";
  version = "5.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/rolling/diagnostic_msgs/5.4.2-1.tar.gz";
    name = "5.4.2-1.tar.gz";
    sha256 = "3166fb42f8740c7d386c0213b78e6be0971a3ab80db1f73a73e310e5455ba5ca";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "A package containing some diagnostics related message and service definitions.";
    license = with lib.licenses; [ asl20 ];
  };
}

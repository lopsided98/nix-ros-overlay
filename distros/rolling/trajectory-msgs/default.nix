
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-trajectory-msgs";
  version = "5.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/rolling/trajectory_msgs/5.3.0-2.tar.gz";
    name = "5.3.0-2.tar.gz";
    sha256 = "a672d567db256cf08c20884a72eba7424d21317ef11e7f55ec9c609437e9a9fb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "A package containing some robot trajectory message definitions.";
    license = with lib.licenses; [ asl20 ];
  };
}

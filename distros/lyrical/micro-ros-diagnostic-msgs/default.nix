
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-micro-ros-diagnostic-msgs";
  version = "0.3.0-r7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/micro_ros_diagnostics-release/archive/release/lyrical/micro_ros_diagnostic_msgs/0.3.0-7.tar.gz";
    name = "0.3.0-7.tar.gz";
    sha256 = "f0bc388f0170fb61be0027c8d125f361a59951dec1868afafef4bcdd6fe78691";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Ccontains messages and service definitions for micro-ROS diagnostics.";
    license = with lib.licenses; [ asl20 ];
  };
}

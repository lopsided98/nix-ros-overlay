
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-foxy-maliput-ros-interfaces";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/maliput_ros-release/archive/release/foxy/maliput_ros_interfaces/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "9dbcffa9171cff7e3d54491ea2c19366f7701ae52a4c8e300bc4214fb00677a3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Interface definitions for ROS2 maliput'';
    license = with lib.licenses; [ bsd3 ];
  };
}

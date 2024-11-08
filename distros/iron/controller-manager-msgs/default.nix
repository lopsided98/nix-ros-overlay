
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, lifecycle-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-iron-controller-manager-msgs";
  version = "3.29.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/iron/controller_manager_msgs/3.29.0-1.tar.gz";
    name = "3.29.0-1.tar.gz";
    sha256 = "c5cc8bc318b075eae4b00f50d92bb663a1595489fee55faf2afc225492d333c0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces lifecycle-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Messages and services for the controller manager.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

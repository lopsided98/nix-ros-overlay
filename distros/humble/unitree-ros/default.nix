
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, boost, geometry-msgs, nav-msgs, rclcpp, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-unitree-ros";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/unitree_ros-release/archive/release/humble/unitree_ros/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "c07abefabddaf2bd438199ac9f375195a89dcead0ecb05958ebe4c2d68930622";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake boost rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs rclcpp rosidl-default-runtime sensor-msgs std-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Unitree ros package";
    license = with lib.licenses; [ "GPL-3.0" ];
  };
}


# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, boost, geometry-msgs, nav-msgs, rclcpp, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-unitree-ros";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/unitree_ros-release/archive/release/humble/unitree_ros/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "fcab6f1bc913c4c8b1a6cb9abd626ca3aa0164158b4f9d59c4f2e718505827de";
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

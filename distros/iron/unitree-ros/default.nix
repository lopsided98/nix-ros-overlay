
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, boost, geometry-msgs, nav-msgs, rclcpp, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-iron-unitree-ros";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/unitree_ros-release/archive/release/iron/unitree_ros/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "fb98f9d32d290a38d3eb2ba7e015c9931986c4929e36091ca8f9615b89510b73";
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


# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cpplint, ament-cmake-gtest, eigen, geometry-msgs, grasping-msgs, moveit-msgs, pcl, pcl-conversions, pcl-ros, rclcpp, rclcpp-action, rclcpp-components, sensor-msgs, shape-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-simple-grasping";
  version = "0.6.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/simple_grasping-release/archive/release/lyrical/simple_grasping/0.6.0-3.tar.gz";
    name = "0.6.0-3.tar.gz";
    sha256 = "23375bc5daacf3ca1680e17d7903b3fec710d5f9c728b5c44bfe066b598acc8f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen pcl ];
  checkInputs = [ ament-cmake-cpplint ament-cmake-gtest ];
  propagatedBuildInputs = [ geometry-msgs grasping-msgs moveit-msgs pcl-conversions pcl-ros rclcpp rclcpp-action rclcpp-components sensor-msgs shape-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Basic grasping applications and demos.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

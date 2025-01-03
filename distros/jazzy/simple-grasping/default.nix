
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cpplint, ament-cmake-gtest, eigen, geometry-msgs, grasping-msgs, moveit-msgs, pcl, pcl-conversions, pcl-ros, rclcpp, rclcpp-action, rclcpp-components, sensor-msgs, shape-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-simple-grasping";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/simple_grasping-release/archive/release/jazzy/simple_grasping/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "0a3520f21a96429cda3ac785681c9b37ba2d29561d7b1f006518cea7712735e8";
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

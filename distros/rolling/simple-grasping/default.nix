
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cpplint, ament-cmake-gtest, eigen, geometry-msgs, grasping-msgs, moveit-msgs, pcl, pcl-conversions, pcl-ros, rclcpp, rclcpp-action, rclcpp-components, sensor-msgs, shape-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-simple-grasping";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/simple_grasping-release/archive/release/rolling/simple_grasping/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "a071bd8ac453535ea1d62b20ce0dc701f3e0bb7282d92d5f6c81727f195ac091";
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

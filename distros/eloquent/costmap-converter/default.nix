
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, class-loader, costmap-converter-msgs, cv-bridge, geometry-msgs, nav2-costmap-2d, pluginlib, rclcpp, tf2 }:
buildRosPackage {
  pname = "ros-eloquent-costmap-converter";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/rst-tu-dortmund/costmap_converter-ros2-release/archive/release/eloquent/costmap_converter/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "b7dd78631ee24fa0bd07f9fdc053bee9caab52e3422b313144b723a90e608698";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ class-loader costmap-converter-msgs cv-bridge geometry-msgs nav2-costmap-2d pluginlib rclcpp tf2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A ros package that includes plugins and nodes to convert occupied costmap2d cells to primitive types.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, class-loader, costmap-converter-msgs, cv-bridge, geometry-msgs, nav2-costmap-2d, pluginlib, rclcpp, tf2 }:
buildRosPackage {
  pname = "ros-dashing-costmap-converter";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/rst-tu-dortmund/costmap_converter-ros2-release/archive/release/dashing/costmap_converter/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "32b0fc476708cbd34d0d01d75e36c43a6281d8d2880a56933b2c9148d2533e8c";
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

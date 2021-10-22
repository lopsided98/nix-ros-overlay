
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, geometry-msgs, nav2-bringup, nav2-common, nav2-core, nav2-costmap-2d, nav2-msgs, nav2-util, pluginlib, rclcpp, tf2, visualization-msgs }:
buildRosPackage {
  pname = "ros-foxy-mppic";
  version = "0.2.1-r2";

  src = fetchurl {
    url = "https://github.com/artofnothingness/mppic-release/archive/release/foxy/mppic/0.2.1-2.tar.gz";
    name = "0.2.1-2.tar.gz";
    sha256 = "1ba13c06c16a18b1c830205f64406fe6f5df722e841e1fca42488044bf3558c8";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ geometry-msgs nav2-bringup nav2-common nav2-core nav2-costmap-2d nav2-msgs nav2-util pluginlib rclcpp tf2 visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''mppic'';
    license = with lib.licenses; [ mit ];
  };
}

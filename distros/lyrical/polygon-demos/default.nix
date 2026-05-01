
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, angles, color-util, geometry-msgs, polygon-msgs, polygon-rviz-plugins, polygon-utils, rclcpp, rviz-common, rviz-default-plugins, rviz2 }:
buildRosPackage {
  pname = "ros-lyrical-polygon-demos";
  version = "1.3.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/polygon_ros-release/archive/release/lyrical/polygon_demos/1.3.0-3.tar.gz";
    name = "1.3.0-3.tar.gz";
    sha256 = "40dc6e885c1cbcfecb3aa1fe12b1ae40c7b9426d35dea64525ccc5bf49e4f867";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ angles color-util geometry-msgs polygon-msgs polygon-rviz-plugins polygon-utils rclcpp rviz-common rviz-default-plugins rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Demo of polygon_rviz_plugins";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

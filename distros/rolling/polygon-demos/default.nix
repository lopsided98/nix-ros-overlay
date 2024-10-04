
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, angles, color-util, geometry-msgs, polygon-msgs, polygon-rviz-plugins, polygon-utils, rclcpp, rviz-common, rviz-default-plugins, rviz2 }:
buildRosPackage {
  pname = "ros-rolling-polygon-demos";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/polygon_ros-release/archive/release/rolling/polygon_demos/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "670f997786033ad4e47ad68fe221a01da647125df6ba00503d5647cdf84e9899";
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

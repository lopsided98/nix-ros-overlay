
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, angles, color-util, geometry-msgs, polygon-msgs, polygon-rviz-plugins, polygon-utils, rclcpp, rviz-common, rviz-default-plugins, rviz2 }:
buildRosPackage {
  pname = "ros-iron-polygon-demos";
  version = "1.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/polygon_ros-release/archive/release/iron/polygon_demos/1.0.2-2.tar.gz";
    name = "1.0.2-2.tar.gz";
    sha256 = "8da8298adcd837ec77b401a2fa7ec02062657e29c2ac4939f2958cb7b66f84c1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ angles color-util geometry-msgs polygon-msgs polygon-rviz-plugins polygon-utils rclcpp rviz-common rviz-default-plugins rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Demo of polygon_rviz_plugins'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, angles, color-util, geometry-msgs, polygon-msgs, polygon-rviz-plugins, polygon-utils, rclcpp, rviz-common, rviz-default-plugins, rviz2 }:
buildRosPackage {
  pname = "ros-foxy-polygon-demos";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/MetroRobots-release/polygon_ros-release/archive/release/foxy/polygon_demos/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "07bfa1d45a29f0dbd9dbdc79310a33aa63b8893119209a08606a70985f340e81";
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

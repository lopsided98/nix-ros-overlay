
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, angles, color-util, geometry-msgs, polygon-msgs, polygon-rviz-plugins, polygon-utils, rclcpp, rviz-common, rviz-default-plugins, rviz2 }:
buildRosPackage {
  pname = "ros-kilted-polygon-demos";
  version = "1.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/polygon_ros-release/archive/release/kilted/polygon_demos/1.2.0-2.tar.gz";
    name = "1.2.0-2.tar.gz";
    sha256 = "2729e166e6af278aa742e3464d8911d439f876db31456074f7f9d8255f21d536";
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

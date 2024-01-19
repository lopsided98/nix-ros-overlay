
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, octomap, octomap-msgs, qt5, rclcpp, rviz-common, rviz-default-plugins, rviz-rendering }:
buildRosPackage {
  pname = "ros-rolling-octomap-rviz-plugins";
  version = "2.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/octomap_rviz_plugins-release/archive/release/rolling/octomap_rviz_plugins/2.0.0-3.tar.gz";
    name = "2.0.0-3.tar.gz";
    sha256 = "0d18b8b7c27fd59af088e6b9bc847041a54010175b9808606d1a1a1627f13b15";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ octomap octomap-msgs qt5.qtbase rclcpp rviz-common rviz-default-plugins rviz-rendering ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''A set of plugins for displaying occupancy information decoded from binary octomap messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

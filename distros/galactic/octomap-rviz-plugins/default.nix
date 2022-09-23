
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, octomap, octomap-msgs, qt5, rclcpp, rviz-common, rviz-default-plugins, rviz-rendering }:
buildRosPackage {
  pname = "ros-galactic-octomap-rviz-plugins";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/octomap_rviz_plugins-release/archive/release/galactic/octomap_rviz_plugins/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "30e4acb74abded27d2a77ab223f45df9a40f49afbf480c54a74b3335ae8fda46";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ octomap octomap-msgs qt5.qtbase rclcpp rviz-common rviz-default-plugins rviz-rendering ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''A set of plugins for displaying occupancy information decoded from binary octomap messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

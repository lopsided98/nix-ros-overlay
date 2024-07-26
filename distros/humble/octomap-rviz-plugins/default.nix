
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, octomap, octomap-msgs, qt5, rclcpp, rviz-common, rviz-default-plugins, rviz-rendering }:
buildRosPackage {
  pname = "ros-humble-octomap-rviz-plugins";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/octomap_rviz_plugins-release/archive/release/humble/octomap_rviz_plugins/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "7ecc53592666697bc3829f42af99378cd0d348c937da2e32d4abdbc767b62b88";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ octomap octomap-msgs qt5.qtbase rclcpp rviz-common rviz-default-plugins rviz-rendering ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "A set of plugins for displaying occupancy information decoded from binary octomap messages.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, octomap, octomap-msgs, qt5, rclcpp, rviz-common, rviz-default-plugins, rviz-rendering }:
buildRosPackage {
  pname = "ros-foxy-octomap-rviz-plugins";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/octomap_rviz_plugins-release/archive/release/foxy/octomap_rviz_plugins/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "53ee0470b8a3a451ccb054de708759c9d45f8155d6e90783faeab49c73671be7";
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

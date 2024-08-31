
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, cv-bridge, hri, hri-msgs, rclcpp, rcpputils, rviz-common, rviz-default-plugins, rviz-ogre-vendor, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-hri-rviz";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros4hri/hri_rviz-release/archive/release/humble/hri_rviz/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "58a29b2f2c8119921bf0d45abf3a32348c5263ded73bbae53b6f44e2dd11183a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge hri hri-msgs rclcpp rcpputils rviz-common rviz-default-plugins rviz-ogre-vendor sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Set of rviz plugins for ROS4HRI data visualization";
    license = with lib.licenses; [ asl20 ];
  };
}

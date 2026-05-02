
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, cv-bridge, hri, hri-msgs, rclcpp, rcpputils, rviz-common, rviz-default-plugins, rviz-ogre-vendor, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-hri-rviz";
  version = "2.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/hri_rviz-release/archive/release/rolling/hri_rviz/2.3.0-2.tar.gz";
    name = "2.3.0-2.tar.gz";
    sha256 = "8f213a684cf743cb21fff8b4fee660e37b5e3406ec841dbdf0a03994f630df20";
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

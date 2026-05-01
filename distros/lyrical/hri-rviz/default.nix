
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, cv-bridge, hri, hri-msgs, rclcpp, rcpputils, rviz-common, rviz-default-plugins, rviz-ogre-vendor, sensor-msgs }:
buildRosPackage {
  pname = "ros-lyrical-hri-rviz";
  version = "2.3.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/hri_rviz-release/archive/release/lyrical/hri_rviz/2.3.0-3.tar.gz";
    name = "2.3.0-3.tar.gz";
    sha256 = "b32ccd4d2121500e9fec2dd5e36e2868ea76b2ed841fcf4b25348191f489027b";
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


# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, cv-bridge, hri, hri-msgs, rclcpp, rcpputils, rviz-common, rviz-default-plugins, rviz-ogre-vendor, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-hri-rviz";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/hri_rviz-release/archive/release/rolling/hri_rviz/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "86f0579c86f9763a794153f7a0bc7fd37345a5ab047dbdb3ae236407301c3ff8";
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


# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher-gui, kuka-resources, launch-ros, launch-testing-ament-cmake, robot-state-publisher, rviz2, urdf, xacro }:
buildRosPackage {
  pname = "ros-humble-kuka-lbr-iiwa-support";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_robot_descriptions-release/archive/release/humble/kuka_lbr_iiwa_support/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "29b6c1205b3ef399a5545f9dd07932c3e17d414c1f54aaccc749ab71f48188a0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ launch-testing-ament-cmake ];
  propagatedBuildInputs = [ joint-state-publisher-gui kuka-resources launch-ros robot-state-publisher rviz2 urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS2 support package for the KUKA LBR iiwa";
    license = with lib.licenses; [ asl20 ];
  };
}

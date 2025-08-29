
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher-gui, kuka-gazebo, kuka-resources, launch-ros, launch-testing-ament-cmake, robot-state-publisher, rviz2, urdf, xacro }:
buildRosPackage {
  pname = "ros-humble-kuka-fortec-support";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_robot_descriptions-release/archive/release/humble/kuka_fortec_support/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "f752119b097633d34b6480198af0595f946dfd027a020643dfaf6fb328036207";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ launch-testing-ament-cmake ];
  propagatedBuildInputs = [ joint-state-publisher-gui kuka-gazebo kuka-resources launch-ros robot-state-publisher rviz2 urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Robot models for the KUKA FORTEC family.";
    license = with lib.licenses; [ asl20 ];
  };
}

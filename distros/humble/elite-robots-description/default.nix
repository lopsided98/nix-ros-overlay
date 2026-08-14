
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, joint-state-publisher-gui, launch, launch-ros, launch-testing-ament-cmake, launch-testing-ros, pose-broadcaster, robot-state-publisher, rviz2, urdf, urdfdom, xacro }:
buildRosPackage {
  pname = "ros-humble-elite-robots-description";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/EliteRobots/Elite_Robots_CS_ROS2_Description-release/archive/release/humble/elite_robots_description/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "b610970a58153f9e2bbae3d9f9b3dd104a7469269dfb4abbb2a98b0da5666628";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest launch-testing-ament-cmake launch-testing-ros urdfdom xacro ];
  propagatedBuildInputs = [ joint-state-publisher-gui launch launch-ros pose-broadcaster robot-state-publisher rviz2 urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "URDF description for Elite Robots";
    license = with lib.licenses; [ asl20 ];
  };
}

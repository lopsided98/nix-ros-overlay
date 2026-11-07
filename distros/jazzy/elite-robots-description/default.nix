
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, joint-state-publisher-gui, launch, launch-ros, launch-testing-ament-cmake, launch-testing-ros, pose-broadcaster, robot-state-publisher, rviz2, urdf, urdfdom, xacro }:
buildRosPackage {
  pname = "ros-jazzy-elite-robots-description";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/EliteRobots/Elite_Robots_CS_ROS2_Description-release/archive/release/jazzy/elite_robots_description/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "9b9d98263867f88c20801c06480d8b8f695a484388eeb6fca843a5a58860724e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest launch-testing-ament-cmake launch-testing-ros urdfdom xacro ];
  propagatedBuildInputs = [ joint-state-publisher-gui launch launch-ros pose-broadcaster robot-state-publisher rviz2 urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "URDF description for ELITE CS Robots";
    license = with lib.licenses; [ asl20 ];
  };
}

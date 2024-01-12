
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt5, rviz }:
buildRosPackage {
  pname = "ros-noetic-rviz-robot-description-topic";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/rviz_robot_description_topic-release/archive/release/noetic/rviz_robot_description_topic/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "d20aa85917a01c8c72dfc1e2cd98d680d21e274a9b2659c07c8d1c474b958e65";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ qt5.qtbase rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RobotModel display using a `/robot_description` topic instead of a parameter'';
    license = with lib.licenses; [ asl20 ];
  };
}

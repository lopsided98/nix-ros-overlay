
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, gazebo, gazebo-plugins, gazebo-ros, geometry-msgs, joint-state-publisher, pythonPackages, robot-state-publisher, roscpp, roslaunch, rospy, velocity-controllers, xacro }:
buildRosPackage {
  pname = "ros-noetic-thunder-line-follower-pmr3100";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ThundeRatz/thunder_line_follower_pmr3100-release/archive/release/noetic/thunder_line_follower_pmr3100/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "56789b16ded81ee822de841792ecb2d3271008642660ad77580d8de9d088760a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ controller-manager gazebo gazebo-plugins gazebo-ros geometry-msgs joint-state-publisher pythonPackages.pygame robot-state-publisher roscpp roslaunch rospy velocity-controllers xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>Simulation environment for a line follower development</p>
    <p>Created for the discipline PMR3100 - Intro to Mechatronics from Poli-USP</p>'';
    license = with lib.licenses; [ mit ];
  };
}

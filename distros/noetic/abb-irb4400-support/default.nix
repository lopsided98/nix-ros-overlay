
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, abb-driver, abb-resources, catkin, industrial-robot-client, joint-state-publisher-gui, robot-state-publisher, roslaunch, rviz, xacro }:
buildRosPackage {
  pname = "ros-noetic-abb-irb4400-support";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/abb-release/archive/release/noetic/abb_irb4400_support/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "a86b98d720cc36325f064fb0ca4c48a04567dbd3121a3e260e51f7da70887798";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ abb-driver abb-resources industrial-robot-client joint-state-publisher-gui robot-state-publisher rviz xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "<p>
      ROS-Industrial support for the ABB IRB 4400 (and variants).
    </p>
    <p>
      This package contains configuration data, 3D models and launch files
      for ABB IRB 4400 manipulators. This currently includes the L30.
    </p>
    <p>
      Joint limits and max joint velocities are based on the information in the
      <a href=\"http://www05.abb.com/global/scot/scot352.nsf/veritydisplay/c90b98aaa057bd6ec12576cb00528ef6/$file/Product%20specification%204400%20M99%20BWOS3.2.pdf\">
      ABB IRB 4400 product specification document</a> (Article No: 3HAC 8770-1).
      All urdfs / xacros are based on the default motion and joint velocity
      limits, unless noted otherwise (ie: no support for high speed joints,
      extended / limited motion ranges or other options).
    </p>
    <p>
      Before using any of the configuration files and / or meshes included
      in this package, be sure to check they are correct for the particular
      robot model and configuration you intend to use them with.
    </p>";
    license = with lib.licenses; [ asl20 ];
  };
}

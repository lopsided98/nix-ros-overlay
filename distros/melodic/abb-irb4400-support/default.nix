
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, abb-driver, abb-resources, catkin, joint-state-publisher, robot-state-publisher, roslaunch, rviz, xacro }:
buildRosPackage {
  pname = "ros-melodic-abb-irb4400-support";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/abb-release/archive/release/melodic/abb_irb4400_support/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "49a2d88c75c80ea8234b1e32f6d0307a2a1c4f6d570255c1eb66f8945314ab6a";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch ];
  propagatedBuildInputs = [ abb-driver abb-resources joint-state-publisher robot-state-publisher rviz xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>
      ROS-Industrial support for the ABB IRB 4400 (and variants).
    </p>
    <p>
      This package contains configuration data, 3D models and launch files
      for ABB IRB 4400 manipulators. This currently includes the L30.
    </p>
    <p>
      Joint limits and max joint velocities are based on the information in the
      <a href="http://www05.abb.com/global/scot/scot352.nsf/veritydisplay/c90b98aaa057bd6ec12576cb00528ef6/$file/Product%20specification%204400%20M99%20BWOS3.2.pdf">
      ABB IRB 4400 product specification document</a> (Article No: 3HAC 8770-1).
      All urdfs / xacros are based on the default motion and joint velocity
      limits, unless noted otherwise (ie: no support for high speed joints,
      extended / limited motion ranges or other options).
    </p>
    <p>
      Before using any of the configuration files and / or meshes included
      in this package, be sure to check they are correct for the particular
      robot model and configuration you intend to use them with.
    </p>'';
    license = with lib.licenses; [ asl20 ];
  };
}

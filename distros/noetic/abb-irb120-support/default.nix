
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, abb-driver, abb-resources, catkin, industrial-robot-client, joint-state-publisher-gui, robot-state-publisher, roslaunch, rviz, xacro }:
buildRosPackage {
  pname = "ros-noetic-abb-irb120-support";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/abb-release/archive/release/noetic/abb_irb120_support/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "b15721b4c15a109c3db1454d1815115c57c91d25a3ea5927caf73c925974c872";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ abb-driver abb-resources industrial-robot-client joint-state-publisher-gui robot-state-publisher rviz xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "<p>
      ROS-Industrial support for the ABB IRB 120 (and variants).
    </p>
    <p>
      This package contains configuration data, 3D models and launch files
      for ABB IRB 120 manipulators. This includes the base model (120) and
      the 120T.
    </p>
    <p>
      Joint limits and max joint velocities are based on the information in the
      <a href=\"http://new.abb.com/products/robotics/industrial-robots/irb-120/irb-120-data\">
      ABB IRB 120 technical data sheet</a> (Version: ROB0149EN_D, May 2012).
      All urdfs / xacros are based on the default motion and joint velocity
      limits, unless noted otherwise (ie: no support for high speed joints,
      extended / limited motion ranges or other options).
    </p>
    <p>
      Inertial and mass properties were calculated using 3D modelling software, based on the 
      supplied <a href=\"http://new.abb.com/products/robotics/industrial-robots/irb-120/irb-120-cad\">
      ABB IRB 120 CAD model</a>.
    </p> 
    <p>
      Before using any of the configuration files and / or meshes included
      in this package, be sure to check they are correct for the particular
      robot model and configuration you intend to use them with.
    </p>";
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fanuc-driver, fanuc-resources, joint-state-publisher, robot-state-publisher, roslaunch, rviz, xacro }:
buildRosPackage {
  pname = "ros-kinetic-fanuc-lrmate200i-support";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/fanuc-release/archive/release/kinetic/fanuc_lrmate200i_support/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "dee1796df3bb0c0d3b5c88ad70b2e4675371066692b6d5f0fb8e1f4f1e2c60e6";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ fanuc-driver fanuc-resources joint-state-publisher robot-state-publisher rviz xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>
      ROS-Industrial support for the Fanuc LR Mate 200i.
    </p>
    <p>
      This package contains configuration data, 3D models and launch files
      for Fanuc LR Mate 200i manipulators. This currently includes the
      base model only.
    </p>
    <p>
      Joint limits and maximum joint velocities are based on the information in
      the <em>FANUC Robotics LR Mate 200i Datasheet</em> version
      <em>FRNA-10/9-DS-005</em>. All urdfs are based on the default motion
      and joint velocity limits, unless noted otherwise (ie: no support for
      high speed joints, extended / limited motion ranges or other options).
    </p>
    <p>
      Before using any of the configuration files and / or meshes included
      in this package, be sure to check they are correct for the particular
      robot model and configuration you intend to use them with.
    </p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

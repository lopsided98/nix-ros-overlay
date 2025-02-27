
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fanuc-driver, fanuc-resources, industrial-robot-client, joint-state-publisher-gui, robot-state-publisher, roslaunch, rviz, xacro }:
buildRosPackage {
  pname = "ros-noetic-fanuc-lrmate200i-support";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/fanuc-release/archive/release/noetic/fanuc_lrmate200i_support/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "fc92b04cf349e4b806ea37c7a4b960e1154467502a1b246b7617c059703f5f41";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ fanuc-driver fanuc-resources industrial-robot-client joint-state-publisher-gui robot-state-publisher rviz xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "<p>
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
    </p>";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

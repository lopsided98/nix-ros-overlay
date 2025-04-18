
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fanuc-driver, fanuc-resources, industrial-robot-client, joint-state-publisher-gui, robot-state-publisher, roslaunch, rviz, xacro }:
buildRosPackage {
  pname = "ros-noetic-fanuc-lrmate200ic-support";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/fanuc-release/archive/release/noetic/fanuc_lrmate200ic_support/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "71859e7c3d59660bcffb01886468637749239c3b3783e372de6c0b1d89a9f95c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ fanuc-driver fanuc-resources industrial-robot-client joint-state-publisher-gui robot-state-publisher rviz xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "<p>
      ROS-Industrial support for the Fanuc LR Mate 200iC (and variants).
    </p>
    <p>
      This package contains configuration data, 3D models and launch files
      for Fanuc LR Mate 200iC manipulators. This includes the base model
      (/5C, /5WP), /5H, /5L (/5LC), /5F and the /5HS. Variants in brackets
      are supported by the files for the referenced model.
    </p>
    <p><b>Specifications</b>:</p>
    <ul>
      <li>LR Mate 200iC    - &quot;J1 - Normal Range&quot;</li>
      <li>LR Mate 200iC/5H - &quot;J1 - Normal Range&quot;</li>
      <li>LR Mate 200iC/5L - &quot;J1 - Normal Range&quot;</li>
      <li>LR Mate 200iC/5F - &quot;J1 - Normal Range&quot;</li>
    </ul>
    <p>
      Joint limits and maximum joint velocities are based on the information in
      the <em>FANUC Robot LR Mate 200iC Mechanical Unit Operator's Manual</em>
      version <em>B-82584EN/07</em>. All urdfs are based on the default motion
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

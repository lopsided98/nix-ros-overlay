
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fanuc-driver, fanuc-resources, industrial-robot-client, joint-state-publisher-gui, robot-state-publisher, roslaunch, rviz, xacro }:
buildRosPackage {
  pname = "ros-noetic-fanuc-lrmate200id-support";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/fanuc-release/archive/release/noetic/fanuc_lrmate200id_support/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "572aa382bc949007f90725095a745e8bbb0f23959a38795519de3d4720822a29";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ fanuc-driver fanuc-resources industrial-robot-client joint-state-publisher-gui robot-state-publisher rviz xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "<p>
      ROS-Industrial support for the Fanuc LR Mate 200iD (and variants).
    </p>
    <p>
      This package contains configuration data, 3D models and launch files
      for Fanuc LR Mate 200iD manipulators. This includes the base
      model (/7C, /7WP), /7H, /7L, /7LC and the /4S, /4SC and /4SH.
      The variants in parentheses are supported by the files for the variant
      immediately preceeding the parentheses.
    </p>
    <p><b>Specifications</b>:</p>
    <ul>
      <li>LR Mate 200iD - &quot;J1 - Normal Range&quot;</li>
      <li>LR Mate 200iD/4S - &quot;J1 - Normal Range&quot;</li>
      <li>LR Mate 200iD/4SC - &quot;J1 - Normal Range&quot;</li>
      <li>LR Mate 200iD/4SH - &quot;J1 - Normal Range; J5 - Horizontal Wrist Zero&quot;</li>
      <li>LR Mate 200iD/7H - &quot;J1 - Normal Range; J5 - Horizontal Wrist Zero&quot;</li>
      <li>LR Mate 200iD/7L - &quot;J1 - Normal Range&quot;</li>
      <li>LR Mate 200iD/7LC - &quot;J1 - Normal Range&quot;</li>
    </ul>
    <p>
      Joint limits and maximum joint velocities are based on the information in
      the <em>FANUC Robot LR Mate 200iD Mechanical Unit Operator's Manual</em>
      version <em>B-83494EN/03</em> and the
      <em>FANUC Robot LR Mate 200iD/4S/4SH/4SC Mechanical Unit Operator's Manual</em>
      version <em>B-83574EN/03</em>. All urdfs are based on the default motion
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

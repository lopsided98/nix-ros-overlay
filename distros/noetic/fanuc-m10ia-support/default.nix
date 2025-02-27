
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fanuc-driver, fanuc-resources, industrial-robot-client, joint-state-publisher-gui, robot-state-publisher, roslaunch, rviz, xacro }:
buildRosPackage {
  pname = "ros-noetic-fanuc-m10ia-support";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/fanuc-release/archive/release/noetic/fanuc_m10ia_support/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "e1f15a9b0ae6fd3fefa2076aaf1058511690426dd9c9a392c75eb6fa2cfd334b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ fanuc-driver fanuc-resources industrial-robot-client joint-state-publisher-gui robot-state-publisher rviz xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "<p>
      ROS-Industrial support for the Fanuc M-10iA (and variants).
    </p>
    <p>
      This package contains configuration data, 3D models and launch files
      for Fanuc M-10iA manipulators. This includes the base model and the
      /7L variant.
    </p>
    <p><b>Specifications</b>:</p>
    <ul>
      <li>M-10iA - &quot;Conventional dress-out&quot;</li>
      <li>M-10iA/7L - &quot;Conventional dress-out&quot;</li>
    </ul>
    <p>
      Joint limits and maximum joint velocities are based on the information in
      the <em>FANUC Robot M-10iA Mechanical Unit Operator's Manual</em>
      version <em>B-82754EN/09</em>. All urdfs are based on the default motion
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


# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fanuc-driver, fanuc-resources, industrial-robot-client, joint-state-publisher-gui, robot-state-publisher, roslaunch, rviz, xacro }:
buildRosPackage {
  pname = "ros-noetic-fanuc-m20ib-support";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/fanuc-release/archive/release/noetic/fanuc_m20ib_support/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "b937eddc0e268413d6bde72e7434d2c4ef158d0e5317dff60618870d533f26f2";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ fanuc-driver fanuc-resources industrial-robot-client joint-state-publisher-gui robot-state-publisher rviz xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "<p>
      ROS-Industrial support for the Fanuc M-20iB (and variants).
    </p>
    <p>
      This package contains configuration data, 3D models and launch files
      for Fanuc M-20iB manipulators. This currently includes the /25 model only.
    </p>
    <p><b>Specifications</b>:</p>
    <ul>
      <li>M-20iB/25 - &quot;Cable integrated J3 Arm&quot;</li>
    </ul>
    <p>
      Joint limits and maximum joint velocities are based on the information in
      the <em>FANUC Robot M-20iB Mechanical Unit Operator's Manual</em> version
      <em>B-83754EN/01</em>. All urdfs are based on the default motion and
      joint velocity limits, unless noted otherwise (ie: no support for high
      speed joints, extended / limited motion ranges or other options).
    </p>
    <p>
      Before using any of the configuration files and / or meshes included
      in this package, be sure to check they are correct for the particular
      robot model and configuration you intend to use them with.
    </p>";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

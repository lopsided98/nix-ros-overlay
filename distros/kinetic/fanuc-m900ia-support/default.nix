
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fanuc-driver, fanuc-resources, joint-state-publisher, robot-state-publisher, roslaunch, rviz, xacro }:
buildRosPackage {
  pname = "ros-kinetic-fanuc-m900ia-support";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/fanuc-release/archive/release/kinetic/fanuc_m900ia_support/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "1265653360eee581019c0e8526b748f41d0b99969d7f9f804cedec6ed2668749";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ fanuc-driver fanuc-resources joint-state-publisher robot-state-publisher rviz xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>
      ROS-Industrial support for the Fanuc M-900iA (and variants).
    </p>
    <p>
      This package contains configuration data, 3D models and launch files
      for Fanuc M-900iA manipulators. This currently includes the /260 model
      only.
    </p>
    <p><b>Specifications</b>:</p>
    <ul>
      <li>M-900iA/260L - &quot;Standard Flange&quot;</li>
    </ul>
    <p>
      Joint limits and maximum joint velocities are based on the information in
      the <em>FANUC Robot M-900iA/260L Mechanical Manual, Maintenance Manual</em>
      version <em>B-82135EN/05</em>. All urdfs are based on the default motion
      and joint velocity limits, unless noted otherwise (ie: no support for high
      speed joints, extended / limited motion ranges or other options).
    </p>
    <p>
      Before using any of the configuration files and / or meshes included
      in this package, be sure to check they are correct for the particular
      robot model and configuration you intend to use them with.
    </p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fanuc-driver, fanuc-resources, joint-state-publisher, robot-state-publisher, roslaunch, rviz, xacro }:
buildRosPackage {
  pname = "ros-kinetic-fanuc-m16ib-support";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/fanuc-release/archive/release/kinetic/fanuc_m16ib_support/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "64d89331fc8a3a617a912bd018e82fef838548fd3a3bd39fd5278d90628e9f10";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ fanuc-driver fanuc-resources joint-state-publisher robot-state-publisher rviz xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>
      ROS-Industrial support for the Fanuc M-16iB / ARC Mate 120iB (and variants).
    </p>
    <p>
      This package contains configuration data, 3D models and launch files
      for Fanuc M-16iB / ARC Mate 120iB manipulators. This currently includes
      the /20 only.
    </p>
    <p><b>Specifications</b>:</p>
    <ul>
      <li>M-16iB/20 - &quot;Default J1 range&quot;</li>
    </ul>
    <p>
      Joint limits and maximum joint velocities are based on the information in
      the <em>FANUC Robot ARC Mate 120iB, Fanuc Robot M-16iB/20 Mechanical
      Unit Maintenance Manual</em> version <em>B-81765EN/02</em>. All urdfs are
      based on the default motion and joint velocity limits, unless noted
      otherwise (ie: no support for high speed joints, extended / limited
      motion ranges or other options).
    </p>
    <p>
      Before using any of the configuration files and / or meshes included
      in this package, be sure to check they are correct for the particular
      robot model and configuration you intend to use them with.
    </p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

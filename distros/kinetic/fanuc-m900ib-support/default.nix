
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fanuc-driver, fanuc-resources, joint-state-publisher, robot-state-publisher, roslaunch, rviz, xacro }:
buildRosPackage {
  pname = "ros-kinetic-fanuc-m900ib-support";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/fanuc-release/archive/release/kinetic/fanuc_m900ib_support/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "41cb9859cd5077c12fb3be628a900710ca5ae3e565843f433fd11d14c95c2b18";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ fanuc-driver fanuc-resources joint-state-publisher robot-state-publisher rviz xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>
      ROS-Industrial support for the Fanuc M-900iB (and variants).
    </p>
    <p>
      This package contains configuration data, 3D models and launch files
      for Fanuc M-900iB manipulators. This currently includes the /700 variant
      only.
    </p>
    <p><b>Specifications</b>:</p>
    <ul>
      <li>M-900iB/700 - Standard Flange</li>
    </ul>
    <p>
      Joint limits and maximum joint velocities are based on the information in
      the <em>FANUC Robot M-900iB/700 Mechanical Unit Operator's Manual</em>
      version <em>B-83444EN/01</em>. All urdfs are based on the default motion
      and joint velocity limits, unless noted otherwise (ie: no support for
      high speed joints, extended / limited motion ranges or other options).
    </p>
    <p>
      Before using any of the configuration files and / or meshes included
      in this package, be sure to check they are correct for the particular
      robot model and configuration you intend to use them with.
    </p>
    <p>
      <b>Note 1</b>: the xacro for the /700 variant includes optional geometry
      for the forklift pockets, balancers and counterweight that can be
      enabled and disabled to correspond to the robot's actual configuration.
      By default, only the balancers and the counterweight are included, but
      this can be changed by making use of the provided xacro macro.
    </p>
    <p>
      <b>Note 2</b>: visualisation of the balancers and the counterweight is
      an approximation only and may not always accurately represent the state
      of the physical robot.
    </p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

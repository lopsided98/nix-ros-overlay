
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, abb-resources, catkin, industrial-robot-client, joint-state-publisher-gui, robot-state-publisher, roslaunch, rviz, xacro }:
buildRosPackage {
  pname = "ros-noetic-abb-crb15000-support";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/abb-release/archive/release/noetic/abb_crb15000_support/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "18f4a0bcab3e0ded3b06e9ed52f54beab5a8f63c768ada140af37c8d3fc4e6c5";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ abb-resources industrial-robot-client joint-state-publisher-gui robot-state-publisher rviz xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "<p>
      ROS-Industrial support for the ABB GoFa CRB 15000 (and variants).
    </p>
    <p>
      This package contains configuration data, 3D models and launch files
      for ABB GoFa CRB 15000 manipulators. This currently includes the
      CRB 15000-5/0.95 and CRB 15000-12/1.27 variants.
    </p>
    <p>
      Joint limits and max joint velocities are based on the information in the
      <em>ABB CRB 15000 Datasheet</em>, document ID: <em>TODO, Feb 2021</em> for
      the CRB 15000-5/0.95. For CRB 15000-12/1.27, they are based on the
      information in <em>ABB CRB 15000 Product manual</em>, document ID:
      <em>3HAC077389-001, Rev. P</em>.
      All urdfs / xacros are based on the default motion and joint velocity
      limits, unless noted otherwise (ie: no support for high speed joints,
      extended / limited motion ranges or other options).
    </p>
    <p>
      Note 1: the CRB 15000-5/0.95 is an early conversion from CAD data
      downloaded from ABB's library with geometry and kinematics partially
      based on the GoFa datasheet.
      There may be conversion errors and other deviations from the real robot.
    </p>
    <p>
      Note 2: this support package does not currently include launch files for
      loading a driver, as no driver has been tested with OmniCore controllers
      and/or CRB 15000 robots yet.
    </p>
    <p>
      Before using any of the configuration files and / or meshes included
      in this package, be sure to check they are correct for the particular
      robot model and configuration you intend to use them with.
    </p>";
    license = with lib.licenses; [ asl20 ];
  };
}

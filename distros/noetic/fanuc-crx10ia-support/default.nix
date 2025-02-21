
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fanuc-driver, fanuc-resources, industrial-robot-client, joint-state-publisher-gui, robot-state-publisher, roslaunch, rviz, xacro }:
buildRosPackage {
  pname = "ros-noetic-fanuc-crx10ia-support";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/fanuc-release/archive/release/noetic/fanuc_crx10ia_support/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "f89123e79b83d99a92fc96a220eafbd2e1fb113458e3baa4a483ecafa708d5fe";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ fanuc-driver fanuc-resources industrial-robot-client joint-state-publisher-gui robot-state-publisher rviz xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "<p>
      ROS-Industrial support for the Fanuc CRX-10iA (and variants).
    </p>
    <p>
      This package contains configuration data, 3D models and launch files
      for Fanuc CRX-10iA manipulators. This currently includes the /L model only.
    </p>
    <p><b>Specifications</b>:</p>
    <ul>
      <li>CRX-10iA/L - 1418mm reach</li>
    </ul>
    <p>
      Joint limits and maximum joint velocities are based on the information in
      the <em>FANUC Robot CRX-10iA, CRX-10iA/L Mechanical Unit Operator's Manual</em>
      version <em>B-84194EN/01</em>. All urdfs are based on the default motion and
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

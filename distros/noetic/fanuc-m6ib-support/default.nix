
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fanuc-driver, fanuc-resources, industrial-robot-client, joint-state-publisher-gui, robot-state-publisher, roslaunch, rviz, xacro }:
buildRosPackage {
  pname = "ros-noetic-fanuc-m6ib-support";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/fanuc-release/archive/release/noetic/fanuc_m6ib_support/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "ef61b946c96b7d20e103c68fa05592496379f37c658d2d8ae13340feb26cd3ea";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ fanuc-driver fanuc-resources industrial-robot-client joint-state-publisher-gui robot-state-publisher rviz xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "<p>
      ROS-Industrial support for the Fanuc M-6iB (and variants).
    </p>
    <p>
      This package contains configuration data, 3D models and launch files
      for Fanuc M-6iB manipulators. This currently includes the base model
      and the /6S variant.
    </p>
    <p><b>Specifications</b>:</p>
    <ul>
      <li>M-6iB - Normal Range</li>
      <li>M-6iB/6S - Normal Range</li>
    </ul>
    <p>
      Joint limits and maximum joint velocities are based on the information in
      the <em>FANUC Robot ARC Mate 100i Model B, FANUC Robot M-6i Model B
      Maintenance Manual</em> version <em>B-81545EN/01</em>. All urdfs are
      based on the default motion and joint velocity limits, unless noted
      otherwise (ie: no support for high speed joints, extended / limited
      motion ranges or other options).
    </p>
    <p>
      Before using any of the configuration files and / or meshes included
      in this package, be sure to check they are correct for the particular
      robot model and configuration you intend to use them with.
    </p>";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

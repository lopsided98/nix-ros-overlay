
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fanuc-driver, fanuc-resources, industrial-robot-client, joint-state-publisher-gui, robot-state-publisher, roslaunch, rviz, xacro }:
buildRosPackage {
  pname = "ros-noetic-fanuc-r2000ib-support";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/fanuc-release/archive/release/noetic/fanuc_r2000ib_support/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "7e0f7673e2519d128674070e4b8eaa7141f59579a8749a86875138e8d49bc41e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ fanuc-driver fanuc-resources industrial-robot-client joint-state-publisher-gui robot-state-publisher rviz xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "<p>
      ROS-Industrial support package for the Fanuc R-2000iB (and variants).
    </p>
    <p>
      This package contains configuration data, 3D models and launch files
      for Fanuc R-2000iB manipulators. This currently includes the /210F
      variant only.
    </p>
    <p><b>Specifications</b>:</p>
    <ul>
      <li>R-2000iB/210F - &quot;J1 - Normal Range&quot;</li>
    </ul>
    <p>
      Joint limits and maximum joint velocities are based on the information in
      the <em>FANUC R-2000iB Mechanical Unit Operator's Manual</em>
      version <em>B-82234EN/11</em>. All urdfs are based on the default motion
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

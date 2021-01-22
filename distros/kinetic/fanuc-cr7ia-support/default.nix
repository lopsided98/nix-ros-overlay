
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fanuc-driver, fanuc-resources, joint-state-publisher, robot-state-publisher, roslaunch, rviz, xacro }:
buildRosPackage {
  pname = "ros-kinetic-fanuc-cr7ia-support";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/fanuc-release/archive/release/kinetic/fanuc_cr7ia_support/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "18db020e996f8f116d72c0b8de33ce98af0cde8ff06b70775486fde0274186b8";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ fanuc-driver fanuc-resources joint-state-publisher robot-state-publisher rviz xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>
      ROS-Industrial support for the Fanuc CR-7iA (and variants).
    </p>
    <p>
      This package contains configuration data, 3D models and launch files
      for Fanuc CR-7iA manipulators. This currently includes the base and
      /L model.
    </p>
    <p><b>Specifications</b>:</p>
    <ul>
      <li>CR-7iA - Normal Range</li>
      <li>CR-7iA/L - Normal Range</li>
    </ul>
    <p>
      Joint limits and maximum joint velocities are based on the information in
      the <em>FANUC Robot CR-7iA Mechanical Unit Operator's Manual</em> version
      <em>B-83774EN/01</em>. All urdfs are based on the default motion and
      joint velocity limits, unless noted otherwise (ie: no support for high
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

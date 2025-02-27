
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fanuc-driver, fanuc-resources, industrial-robot-client, joint-state-publisher-gui, robot-state-publisher, roslaunch, rviz, xacro }:
buildRosPackage {
  pname = "ros-noetic-fanuc-r2000ic-support";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/fanuc-release/archive/release/noetic/fanuc_r2000ic_support/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "b113b923b1c80814c11d59a78bda5bff410a4c814edf6e5671440bba7ba6beaa";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ fanuc-driver fanuc-resources industrial-robot-client joint-state-publisher-gui robot-state-publisher rviz xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "<p>
      ROS-Industrial support for the Fanuc R-2000iC (and variants).
    </p>
    <p>
      This package contains configuration data, 3D models and launch files
      for Fanuc R-2000iC manipulators. This includes the /125L, /165F, /210F,
      /210L and /270F variants.
    </p>
    <p>
      <b>Note</b>: for use with current ROS packages, the /210F is identical
      to the /165F and reuses the meshes, kinematic structure and the OPW
      parameters of the /165. Only the joint limits are different.
    </p>
    <p><b>Specifications</b>:</p>
    <ul>
      <li>R-2000iC/125L - &quot;Conventional dress-out&quot;</li>
      <li>R-2000iC/165F - &quot;Conventional dress-out&quot;</li>
      <li>R-2000iC/210F - &quot;Conventional dress-out&quot;</li>
      <li>R-2000iC/210L - &quot;Conventional dress-out&quot;</li>
      <li>R-2000iC/270F - &quot;Conventional dress-out&quot;</li>
    </ul>
    <p>
      Joint limits and maximum joint velocities are based on the information in
      the <em>FANUC Robot R-2000iC Mechanical Unit Operator's Manual</em>
      version <em>B-83644EN/01</em>. All urdfs are based on the default motion
      and joint velocity limits, unless noted otherwise (ie: no support for
      high speed joints, extended / limited motion ranges or other options).
    </p>
    <p>
      Before using any of the configuration files and / or meshes included
      in this package, be sure to check they are correct for the particular
      robot model and configuration you intend to use them with.
    </p>
    <p><b>Contributors</b>:</p>
    <p>
      This support package has received contributions from: Timo Birnkraut and
      Simon Schmeisser (125L), Didier Quirin (210F), Haris Suwignyo (Alten
      Nederland) (270F) and Ademola Oridate (Wilder Systems) (210L).
    </p>";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

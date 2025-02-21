
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fanuc-driver, fanuc-resources, industrial-robot-client, joint-state-publisher-gui, robot-state-publisher, roslaunch, rviz, xacro }:
buildRosPackage {
  pname = "ros-noetic-fanuc-cr7ia-support";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/fanuc-release/archive/release/noetic/fanuc_cr7ia_support/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "3b0572943e1d7eb7ba9c44105034dc5f51c6cf557a781e10787c9736a6395659";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ fanuc-driver fanuc-resources industrial-robot-client joint-state-publisher-gui robot-state-publisher rviz xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "<p>
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
      Link lengths are based on information in <em>FANUC Robot CR-4iA, CR-7iA,
      CR-7iA/L, CR-14iA/L Mechanical Unit Operator's Manual</em> version
      <em>B-83774EN/04</em>.
      Joint limits and maximum joint velocities are based on the information in
      the system variables of the supported variants (either from FRVCs or real
      controllers).
      All urdfs are based on the default motion and joint velocity limits,
      unless noted otherwise (ie: no support for high speed joints,
      extended / limited motion ranges or other options).
    </p>
    <p>
      Before using any of the configuration files and / or meshes included
      in this package, be sure to check they are correct for the particular
      robot model and configuration you intend to use them with.
    </p>
    <p>
      <b>Note</b>: collaborative robots make use of special safety systems
      embedded in the OEM controller which continuously monitor the state of
      the robot and adapt limits where and when necessary.
      The joint limits specified in the xacros provided by this package are the
      maximum joint limits as specified by Fanuc. As there is no information
      available on how the collaborative safety system works, we cannot model
      it here and thus it's very likely the joint limits in these files are
      unattainable by the actual robot.
    </p>";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

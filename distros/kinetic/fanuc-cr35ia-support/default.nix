
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fanuc-driver, fanuc-resources, joint-state-publisher, robot-state-publisher, roslaunch, rviz, xacro }:
buildRosPackage {
  pname = "ros-kinetic-fanuc-cr35ia-support";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/fanuc-release/archive/release/kinetic/fanuc_cr35ia_support/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "edd8d510eb7208f8555f4ee98584b8bc687217798224c5347f5f2b280c992210";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ fanuc-driver fanuc-resources joint-state-publisher robot-state-publisher rviz xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>
      ROS-Industrial support for the Fanuc CR-35iA (and variants).
    </p>
    <p>
      This package contains configuration data, 3D models and launch files
      for Fanuc CR-35iA manipulators. This currently includes the base model
      only.
    </p>
    <p><b>Specifications</b>:</p>
    <ul>
      <li>CR-35iA - Normal Range</li>
    </ul>
    <p>
      Joint limits and maximum joint velocities are based on the information in
      the <em>FANUC Robot CR-35iA Mechanical Unit Operator's Manual</em> version
      <em>B-83734EN/01</em>. All urdfs are based on the default motion and
      joint velocity limits, unless noted otherwise (ie: no support for high
      speed joints, extended / limited motion ranges or other options).
    </p>
    <p>
      Before using any of the configuration files and / or meshes included
      in this package, be sure to check they are correct for the particular
      robot model and configuration you intend to use them with.
    </p>
    <p>
      <b>Note</b>: there is currently some confusion over the correct values for
      the joint limits of joints 2 and 3. Version <em>B-83734EN/01</em> of the
      Operator's Manual incorrectly states that 1.05 rad equals 120 degrees,
      and that 0.39 rad equals 45 degrees (joint 2). Additionally, it gives a
      value of -122.9 degrees for the lower limit of joint 3, whereas (at
      least) Roboguide Rev K have this limit set to -182 degrees.
      We advise users to pay extra attention when verifying the xacro in this
      support package until this is cleared up.
    </p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

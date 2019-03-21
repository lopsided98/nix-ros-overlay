
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rviz, robot-state-publisher, roslaunch, joint-state-publisher, xacro, abb-driver }:
buildRosPackage {
  pname = "ros-kinetic-abb-irb6640-support";
  version = "1.3.0-r1";

  src = fetchurl {
    url = https://github.com/ros-industrial-release/abb-release/archive/release/kinetic/abb_irb6640_support/1.3.0-1.tar.gz;
    sha256 = "6d57c94b306f0b4e7336addaacc64e932f5c7e85c5ccec7cc97447483045ba35";
  };

  propagatedBuildInputs = [ rviz robot-state-publisher joint-state-publisher xacro abb-driver ];
  nativeBuildInputs = [ roslaunch catkin ];

  meta = {
    description = ''<p>
      ROS-Industrial support for the ABB IRB 6640 (and variants).
    </p>
    <p>
      This package contains configuration data, 3D models and launch files
      for ABB IRB 6640 manipulators. This currently includes the
      IRB 6640-185/2.8m (6640-185) only.
    </p>
    <p>
      Joint limits and max joint velocities are based on the information in the
      <a href="http://www.abbrobots.co.uk/en/3HAC028284-en.pdf">ABB IRB 6640
      technical data sheet</a> (Version: 3HAC 028284-001 Rev. N). All urdfs /
      xacros are based on the default motion and joint velocity limits, unless
      noted otherwise (ie: no support for high speed joints, extended / limited
      motion ranges or other options).
    </p>
    <p>
      Before using any of the configuration files and / or meshes included
      in this package, be sure to check they are correct for the particular
      robot model and configuration you intend to use them with.
    </p>'';
    #license = lib.licenses.Apache2;
  };
}

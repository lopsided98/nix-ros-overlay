
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rviz, robot-state-publisher, roslaunch, joint-state-publisher, abb-driver }:
buildRosPackage {
  pname = "ros-kinetic-abb-irb6600-support";
  version = "1.3.0-r1";

  src = fetchurl {
    url = https://github.com/ros-industrial-release/abb-release/archive/release/kinetic/abb_irb6600_support/1.3.0-1.tar.gz;
    sha256 = "55861d117d65932f565bcc078ae354f83b8ae440247e578fe9b0f8024aa0b545";
  };

  propagatedBuildInputs = [ rviz joint-state-publisher robot-state-publisher abb-driver ];
  nativeBuildInputs = [ roslaunch catkin ];

  meta = {
    description = ''<p>
      ROS-Industrial support for the ABB IRB 6600 (and variants).
    </p>
    <p>
      This package contains configuration data, 3D models and launch files
      for ABB IRB 6600 manipulators. This currently includes the base model.
    </p>
    <p>
      Joint limits and max joint velocities are based on the information in
      the ABB data sheets.  All URDFs / XACROs are based on the
      default motion and joint velocity limits, unless noted otherwise (ie:
      no support for high speed joints, extended / limited motion ranges or
      other options).
    </p>
    <p>
      Before using any of the configuration files and / or meshes included
      in this package, be sure to check they are correct for the particular
      robot model and configuration you intend to use them with.
    </p>
    <p>
      The unqualified IRB 6400 model will be removed in ROS-Lunar, please
      use the abb_irb6640_support as a replacement.
    </p>'';
    #license = lib.licenses.Apache2;
  };
}

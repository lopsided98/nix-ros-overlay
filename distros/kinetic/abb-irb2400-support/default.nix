
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, abb-driver, abb-resources, catkin, joint-state-publisher, robot-state-publisher, roslaunch, rviz }:
buildRosPackage {
  pname = "ros-kinetic-abb-irb2400-support";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/abb-release/archive/release/kinetic/abb_irb2400_support/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "097512a43fc63e6891748fd431f673540d36cf1481947acfa3366e4fa4451e3c";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ abb-driver abb-resources joint-state-publisher robot-state-publisher rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>
      ROS-Industrial support for the ABB IRB 2400 (and variants).
    </p>
    <p>
      This package contains configuration data, 3D models and launch files
      for ABB IRB 2400 manipulators. This currently includes the base model.
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
      The unqualified IRB 2400 model will be removed in ROS-Lunar, please
      use the IRB 2400-12/1.55 as a replacement.
    </p>'';
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, abb-driver, abb-resources, catkin, industrial-robot-client, joint-state-publisher-gui, robot-state-publisher, roslaunch, rviz, xacro }:
buildRosPackage {
  pname = "ros-noetic-abb-irb7600-support";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/abb-release/archive/release/noetic/abb_irb7600_support/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "e643f13703a2b392bbb610a0f14f98bb8db7bdaafbc9f26e1b083c3fad90a9fd";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ abb-driver abb-resources industrial-robot-client joint-state-publisher-gui robot-state-publisher rviz xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "<p>
      ROS-Industrial support for the ABB IRB 7600 (and variants).
    </p>
    <p>
      This package contains configuration data, 3D models and launch files
      for ABB IRB 7600 manipulators. This currently includes the 150/3.50
      variant only.
    </p>
    <p>
      Joint limits and max joint velocities are based on the information in the
      <a href=\"https://library.e.abb.com/public/10b88af5de1b4396a3337e734869f364/PR10074_EN_R11_HR.pdf\">
      ABB IRB 7600 product specification document</a>. All URDFs / XACROs are based on the
      default motion and joint velocity limits, unless noted otherwise (ie:
      no support for high speed joints, extended / limited motion ranges or
      other options).
    </p>
    <p>
      Before using any of the configuration files and / or meshes included
      in this package, be sure to check they are correct for the particular
      robot model and configuration you intend to use them with.
    </p>";
    license = with lib.licenses; [ asl20 ];
  };
}

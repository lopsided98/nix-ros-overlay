
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, abb-driver, abb-resources, catkin, industrial-robot-client, joint-state-publisher-gui, robot-state-publisher, roslaunch, rviz, xacro }:
buildRosPackage {
  pname = "ros-noetic-abb-irb6650s-support";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/abb-release/archive/release/noetic/abb_irb6650s_support/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "23050720767aaee7ea8ac336da5417f6fb161db591c8924180b20f0f277bde9c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ abb-driver abb-resources industrial-robot-client joint-state-publisher-gui robot-state-publisher rviz xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "<p>
      ROS-Industrial support for the ABB IRB_6650S (and variants).
    </p>
    <p>
      This package contains configuration data, 3D models and launch files
      for ABB IRB_6650S manipulators. This currently includes the base model.
    </p>
    <p>
      Joint limits and max joint velocities are based on the information in the
      <a href=\"https://library.e.abb.com/public/9fcf15f419454768823fccb5fa26df11/3HAC030822-en.pdf\">
      ABB IRB 6650S product specification document</a> All URDFs / XACROs are based on the
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

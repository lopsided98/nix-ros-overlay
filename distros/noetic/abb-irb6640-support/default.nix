
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, abb-driver, catkin, industrial-robot-client, joint-state-publisher-gui, robot-state-publisher, roslaunch, rviz, xacro }:
buildRosPackage {
  pname = "ros-noetic-abb-irb6640-support";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/abb-release/archive/release/noetic/abb_irb6640_support/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "c5f85c9325a6a412a0e05057e64fa246e0ebaf7ba95c629d3a4129f3449875b7";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ abb-driver industrial-robot-client joint-state-publisher-gui robot-state-publisher rviz xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "<p>
      ROS-Industrial support for the ABB IRB 6640 (and variants).
    </p>
    <p>
      This package contains configuration data, 3D models and launch files
      for ABB IRB 6640 manipulators. This currently includes the
      IRB 6640-185/2.8m (6640-185) only.
    </p>
    <p>
      Joint limits and max joint velocities are based on the information in the
      <a href=\"http://www.abbrobots.co.uk/en/3HAC028284-en.pdf\">ABB IRB 6640
      technical data sheet</a> (Version: 3HAC 028284-001 Rev. N). All urdfs /
      xacros are based on the default motion and joint velocity limits, unless
      noted otherwise (ie: no support for high speed joints, extended / limited
      motion ranges or other options).
    </p>
    <p>
      Before using any of the configuration files and / or meshes included
      in this package, be sure to check they are correct for the particular
      robot model and configuration you intend to use them with.
    </p>";
    license = with lib.licenses; [ asl20 ];
  };
}

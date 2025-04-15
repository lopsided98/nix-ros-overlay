
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, abb-driver, abb-resources, catkin, industrial-robot-client, joint-state-publisher-gui, robot-state-publisher, roslaunch, rviz, xacro }:
buildRosPackage {
  pname = "ros-noetic-abb-irb2600-support";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/abb-release/archive/release/noetic/abb_irb2600_support/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "53b294470d914329e633b8213e28f3ab056931893821f0bde93746c35d1503b6";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ abb-driver abb-resources industrial-robot-client joint-state-publisher-gui robot-state-publisher rviz xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "<p>
      ROS-Industrial support for the ABB IRB 2600 (and variants).
    </p>
    <p>
      This package contains configuration data, 3D models and launch files
      for ABB IRB 2600 manipulators. This currently includes the IRB 2600-12/1.65
      (20/1.65) and the IRB 2600-12/1.85. Variants listed in parenthesis may use
      the files of the preceding model.
    </p>
    <p>
      Joint limits and max joint velocities are based on the information in the
      <a href=\"http://new.abb.com/products/robotics/industrial-robots/irb-2600/irb-2600-data\">
      ABB IRB 2600 technical data sheet</a> (Version: ROB0142EN_B, October
      2010) and the <em>ABB Product specification IRB 2600</em>, document ID:
      <em>3HAC035959-001, Rev. AE</em> for the IRB 2600-12/1.85 variant.
      All urdfs / xacros are based on the default motion and joint
      velocity limits, unless noted otherwise (ie: no support for high speed
      joints, extended / limited motion ranges or other options).
    </p>
    <p>
      Before using any of the configuration files and / or meshes included
      in this package, be sure to check they are correct for the particular
      robot model and configuration you intend to use them with.
    </p>";
    license = with lib.licenses; [ asl20 ];
  };
}

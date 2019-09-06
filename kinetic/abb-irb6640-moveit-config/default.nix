
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-visualization, moveit-ros-move-group, catkin, abb-irb6640-support, moveit-simple-controller-manager, moveit-planners-ompl, robot-state-publisher, joint-state-publisher, xacro, industrial-robot-simulator }:
buildRosPackage {
  pname = "ros-kinetic-abb-irb6640-moveit-config";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/abb-release/archive/release/kinetic/abb_irb6640_moveit_config/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "28ebe744b4dade2ab5eeaf74c462936c2e2cefbaa88eb547ac0ac78d537f57ad";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ moveit-ros-move-group moveit-ros-visualization abb-irb6640-support moveit-simple-controller-manager robot-state-publisher industrial-robot-simulator joint-state-publisher xacro moveit-planners-ompl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>
      MoveIt package for the ABB IRB 6640.
    </p>
    <p>
      An automatically generated package with all the configuration and launch
      files for using the ABB IRB 6640 with the MoveIt Motion Planning
      Framework.
    </p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

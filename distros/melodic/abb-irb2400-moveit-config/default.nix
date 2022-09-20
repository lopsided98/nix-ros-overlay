
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, abb-irb2400-moveit-plugins, abb-irb2400-support, catkin, industrial-robot-simulator, joint-state-publisher, moveit-planners-ompl, moveit-ros-move-group, moveit-ros-visualization, moveit-simple-controller-manager, robot-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-melodic-abb-irb2400-moveit-config";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/abb-release/archive/release/melodic/abb_irb2400_moveit_config/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "cb059c41a63c0ed80fc4cdc039db24a661e627cef5ea0ff97b060896f8fcd8f2";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ abb-irb2400-moveit-plugins abb-irb2400-support industrial-robot-simulator joint-state-publisher moveit-planners-ompl moveit-ros-move-group moveit-ros-visualization moveit-simple-controller-manager robot-state-publisher xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>
      MoveIt package for the ABB IRB 2400.
    </p>
    <p>
      An automatically generated package with all the configuration and launch
      files for using the ABB IRB 2400 with the MoveIt Motion Planning
      Framework.
    </p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

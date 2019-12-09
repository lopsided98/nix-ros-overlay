
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, abb-irb6640-support, joint-state-publisher, moveit-planners-ompl, xacro, robot-state-publisher, moveit-ros-move-group, moveit-simple-controller-manager, catkin, industrial-robot-simulator, moveit-ros-visualization }:
buildRosPackage {
  pname = "ros-kinetic-abb-irb6640-moveit-config";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/abb-release/archive/release/kinetic/abb_irb6640_moveit_config/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "4f02f2b46cb97a900f31eb53d230b154cafadf6a1fc978dc8cf4900376fe8425";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ abb-irb6640-support joint-state-publisher moveit-planners-ompl xacro robot-state-publisher moveit-ros-move-group moveit-simple-controller-manager industrial-robot-simulator moveit-ros-visualization ];
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

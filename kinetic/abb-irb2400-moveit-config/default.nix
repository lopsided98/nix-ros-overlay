
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-planners-ompl, joint-state-publisher, xacro, robot-state-publisher, moveit-ros-move-group, moveit-simple-controller-manager, catkin, abb-irb2400-moveit-plugins, abb-irb2400-support, industrial-robot-simulator, moveit-ros-visualization }:
buildRosPackage {
  pname = "ros-kinetic-abb-irb2400-moveit-config";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/abb-release/archive/release/kinetic/abb_irb2400_moveit_config/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "0031fe5bcffa4b0ee2a865d41ee400a52656e6ed87c96e6df4dba5653cc6c6e0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ moveit-planners-ompl joint-state-publisher xacro robot-state-publisher moveit-ros-move-group moveit-simple-controller-manager abb-irb2400-moveit-plugins abb-irb2400-support industrial-robot-simulator moveit-ros-visualization ];
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

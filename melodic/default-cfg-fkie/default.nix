
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, multimaster-msgs-fkie, rospy, roslaunch, roslib }:
buildRosPackage {
  pname = "ros-melodic-default-cfg-fkie";
  version = "0.8.10";

  src = fetchurl {
    url = https://github.com/fkie-release/multimaster_fkie-release/archive/release/melodic/default_cfg_fkie/0.8.10-0.tar.gz;
    sha256 = "597115fae1876c7b86e7aa7f919eb130d9e03bc5ca4978653e2a3d09344b98f2";
  };

  propagatedBuildInputs = [ roslib roslaunch multimaster-msgs-fkie rospy ];
  nativeBuildInputs = [ catkin multimaster-msgs-fkie ];

  meta = {
    description = ''The configuration node loads a given launch configuration and offers services to 
     list or start the contained nodes. It provides additional description 
     extracted from launch file. This is used by node_manager_fkie.'';
    #license = lib.licenses.BSD;
  };
}

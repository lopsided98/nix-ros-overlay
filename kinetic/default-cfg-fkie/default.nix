
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, multimaster-msgs-fkie, rospy, roslaunch, roslib }:
buildRosPackage {
  pname = "ros-kinetic-default-cfg-fkie";
  version = "0.8.11";

  src = fetchurl {
    url = https://github.com/fkie-release/multimaster_fkie-release/archive/release/kinetic/default_cfg_fkie/0.8.11-0.tar.gz;
    sha256 = "08e2e2814333ec210d8f273253dc0313df1f722888c6f391c0b6bf55449d1e9c";
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

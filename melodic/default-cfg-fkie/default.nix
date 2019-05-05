
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, multimaster-msgs-fkie, rospy, roslaunch, roslib }:
buildRosPackage {
  pname = "ros-melodic-default-cfg-fkie";
  version = "0.8.12";

  src = fetchurl {
    url = https://github.com/fkie-release/multimaster_fkie-release/archive/release/melodic/default_cfg_fkie/0.8.12-0.tar.gz;
    sha256 = "0b43fafcadef2aeff4fd5e7325daac4eeab711e5323c32fb37606bd318f5c7a1";
  };

  buildInputs = [ multimaster-msgs-fkie ];
  propagatedBuildInputs = [ roslib roslaunch multimaster-msgs-fkie rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The configuration node loads a given launch configuration and offers services to 
     list or start the contained nodes. It provides additional description 
     extracted from launch file. This is used by node_manager_fkie.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

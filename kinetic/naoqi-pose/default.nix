
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, actionlib-msgs, trajectory-msgs, sensor-msgs, catkin, naoqi-bridge-msgs, actionlib, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-naoqi-pose";
  version = "0.5.5";

  src = fetchurl {
    url = https://github.com/ros-naoqi/naoqi_bridge-release/archive/release/kinetic/naoqi_pose/0.5.5-0.tar.gz;
    sha256 = "baffa6449d94b13739ccfcf17cceb9283145ab80974bc10a78088d16be178982";
  };

  propagatedBuildInputs = [ std-srvs actionlib-msgs actionlib std-msgs trajectory-msgs sensor-msgs rospy naoqi-bridge-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>
          This package contains nodes for managing Nao's poses.
    </p>'';
    #license = lib.licenses.BSD;
  };
}


# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, trajectory-msgs, sensor-msgs, std-msgs, std-srvs, actionlib, catkin, actionlib-msgs, naoqi-bridge-msgs, rospy }:
buildRosPackage {
  pname = "ros-kinetic-naoqi-pose";
  version = "0.5.5";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/naoqi_bridge-release/archive/release/kinetic/naoqi_pose/0.5.5-0.tar.gz";
    name = "0.5.5-0.tar.gz";
    sha256 = "baffa6449d94b13739ccfcf17cceb9283145ab80974bc10a78088d16be178982";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ trajectory-msgs sensor-msgs std-msgs std-srvs actionlib actionlib-msgs naoqi-bridge-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>
          This package contains nodes for managing Nao's poses.
    </p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

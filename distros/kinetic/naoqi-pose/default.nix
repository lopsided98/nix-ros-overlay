
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, naoqi-bridge-msgs, rospy, sensor-msgs, std-msgs, std-srvs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-kinetic-naoqi-pose";
  version = "0.5.5";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/naoqi_bridge-release/archive/release/kinetic/naoqi_pose/0.5.5-0.tar.gz";
    name = "0.5.5-0.tar.gz";
    sha256 = "baffa6449d94b13739ccfcf17cceb9283145ab80974bc10a78088d16be178982";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib actionlib-msgs naoqi-bridge-msgs rospy sensor-msgs std-msgs std-srvs trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>
          This package contains nodes for managing Nao's poses.
    </p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

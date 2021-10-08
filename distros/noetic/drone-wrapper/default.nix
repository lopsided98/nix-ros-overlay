
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, geometry-msgs, mavros, mavros-msgs, rospy, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-drone-wrapper";
  version = "1.4.2-r1";

  src = fetchurl {
    url = "https://github.com/JdeRobot/drones-release/archive/release/noetic/drone_wrapper/1.4.2-1.tar.gz";
    name = "1.4.2-1.tar.gz";
    sha256 = "a3b6b97dd4608ffae016999446165c3b7cdc2a25845cc7344482d58ded3e52c3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge geometry-msgs mavros mavros-msgs rospy sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The drone_wrapper package'';
    license = with lib.licenses; [ mit ];
  };
}

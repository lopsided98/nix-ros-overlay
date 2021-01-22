
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslint, rospy, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-joy-listener";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/wu-robotics/wu_ros_tools/archive/release/kinetic/joy_listener/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "84ffab25040e6dc468343cc12be8ddd522caa6780773672a3ba9b7ce313997b1";
  };

  buildType = "catkin";
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ rospy sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Translates joy msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslint, rospy, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-joy-listener";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/wu-robotics/wu_ros_tools/archive/release/noetic/joy_listener/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "4f246122f5d954a62cababed7e083e6809bbaf7b702f71ac187c5c5749c439c5";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ rospy sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Translates joy msgs";
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, camera-info-manager, catkin, cv-bridge, dynamic-reconfigure, geometry-msgs, image-transport, message-generation, message-runtime, nodelet, roscpp, roslint, rospy, rostest, sensor-msgs, std-msgs, tf, tf2, tf2-geometry-msgs, udp-com, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-hfl-driver";
  version = "0.0.17-r1";

  src = fetchurl {
    url = "https://github.com/flynneva/hfl_driver-release/archive/release/noetic/hfl_driver/0.0.17-1.tar.gz";
    name = "0.0.17-1.tar.gz";
    sha256 = "a0a2897b964ca4e328217ee3bee491a825e424735c01d4f022d38b1013aaf4fd";
  };

  buildType = "catkin";
  checkInputs = [ roslint rostest ];
  propagatedBuildInputs = [ angles camera-info-manager cv-bridge dynamic-reconfigure geometry-msgs image-transport message-generation message-runtime nodelet roscpp rospy sensor-msgs std-msgs tf tf2 tf2-geometry-msgs udp-com visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The hfl package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

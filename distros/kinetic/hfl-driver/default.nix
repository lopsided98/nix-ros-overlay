
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, camera-info-manager, catkin, cv-bridge, dynamic-reconfigure, geometry-msgs, image-geometry, image-transport, message-generation, message-runtime, nodelet, roscpp, roslint, rospy, rostest, sensor-msgs, std-msgs, tf, tf2, tf2-geometry-msgs, udp-com, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-hfl-driver";
  version = "0.0.20-r1";

  src = fetchurl {
    url = "https://github.com/flynneva/hfl_driver-release/archive/release/kinetic/hfl_driver/0.0.20-1.tar.gz";
    name = "0.0.20-1.tar.gz";
    sha256 = "d602d8f61f36bad3bafc93222b14b651b41bb86617982a3ffbc369f39d22d970";
  };

  buildType = "catkin";
  checkInputs = [ roslint rostest ];
  propagatedBuildInputs = [ angles camera-info-manager cv-bridge dynamic-reconfigure geometry-msgs image-geometry image-transport message-generation message-runtime nodelet roscpp rospy sensor-msgs std-msgs tf tf2 tf2-geometry-msgs udp-com visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The hfl package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

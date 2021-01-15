
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-runtime, roscpp, rospy, sensor-msgs, serial, std-msgs, tf, tf2 }:
buildRosPackage {
  pname = "ros-kinetic-watson-ins";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/AutonomousVehicleLaboratory/watson_ins-release/archive/release/kinetic/watson_ins/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "1f5ef13092d489067c04ffa5cd53a46a9b10fc4b2eb7919312cb49b4df974c78";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs message-runtime roscpp rospy sensor-msgs serial std-msgs tf tf2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The watson_ins package'';
    license = with lib.licenses; [ gpl3 ];
  };
}

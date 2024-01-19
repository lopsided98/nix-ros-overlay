
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, boost, catkin, diagnostic-msgs, message-generation, message-runtime, roscpp, rospy, sensor-msgs, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-light";
  version = "0.7.15-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/noetic/cob_light/0.7.15-1.tar.gz";
    name = "0.7.15-1.tar.gz";
    sha256 = "c014084a6122454fb9ae684fd062a7d3fd348eb192332d312574dba3dd916b23";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs boost diagnostic-msgs message-runtime roscpp rospy sensor-msgs std-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains scripts to operate the LED lights on Care-O-bot.'';
    license = with lib.licenses; [ asl20 ];
  };
}

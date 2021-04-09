
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, boost, catkin, diagnostic-msgs, message-generation, message-runtime, roscpp, rospy, sensor-msgs, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-light";
  version = "0.7.5-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/noetic/cob_light/0.7.5-1.tar.gz";
    name = "0.7.5-1.tar.gz";
    sha256 = "b97e753fde8ddf79c926006102c65316ec44cb36e5d9f30f8883cdd448fb7b3b";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs boost diagnostic-msgs message-runtime roscpp rospy sensor-msgs std-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains scripts to operate the LED lights on Care-O-bot.'';
    license = with lib.licenses; [ asl20 ];
  };
}

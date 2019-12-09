
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, sensor-msgs, boost, diagnostic-msgs, std-msgs, actionlib, catkin, actionlib-msgs, rospy, roscpp, visualization-msgs, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-cob-light";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/melodic/cob_light/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "75368168bfa1edf2bac15690b7979c1008f7f1081e39eafa45113f88b2d498da";
  };

  buildType = "catkin";
  buildInputs = [ boost sensor-msgs diagnostic-msgs std-msgs actionlib actionlib-msgs visualization-msgs roscpp message-generation ];
  propagatedBuildInputs = [ boost sensor-msgs diagnostic-msgs std-msgs actionlib actionlib-msgs visualization-msgs roscpp rospy message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains scripts to operate the LED lights on Care-O-bot.'';
    license = with lib.licenses; [ asl20 ];
  };
}

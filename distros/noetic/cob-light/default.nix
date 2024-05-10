
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, boost, catkin, diagnostic-msgs, message-generation, message-runtime, roscpp, rospy, sensor-msgs, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-light";
  version = "0.7.17-r2";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_driver-release/archive/release/noetic/cob_light/0.7.17-2.tar.gz";
    name = "0.7.17-2.tar.gz";
    sha256 = "0be831e1a9d72556b80973e7ccda4098a6b57bc78b5b7d022551383d9f67b636";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs boost diagnostic-msgs message-runtime roscpp rospy sensor-msgs std-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "This package contains scripts to operate the LED lights on Care-O-bot.";
    license = with lib.licenses; [ asl20 ];
  };
}

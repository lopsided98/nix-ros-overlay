
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, boost, catkin, cob-srvs, control-toolbox, dynamic-reconfigure, geometry-msgs, interactive-markers, kdl-conversions, kdl-parser, message-generation, message-runtime, orocos-kdl, roscpp, roslint, rospy, sensor-msgs, std-msgs, std-srvs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-cob-frame-tracker";
  version = "0.8.11-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/melodic/cob_frame_tracker/0.8.11-1.tar.gz";
    name = "0.8.11-1.tar.gz";
    sha256 = "c1df09d954695266c5e6b9ef97ea84bb8eae600a02c7e898558815a7d4a3b6d8";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs boost cob-srvs control-toolbox dynamic-reconfigure geometry-msgs interactive-markers kdl-conversions kdl-parser message-runtime orocos-kdl roscpp roslint rospy sensor-msgs std-msgs std-srvs tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_frame_tracker package contains nodes that publish Twist commands based on the distance to the desired tf frame target.'';
    license = with lib.licenses; [ asl20 ];
  };
}

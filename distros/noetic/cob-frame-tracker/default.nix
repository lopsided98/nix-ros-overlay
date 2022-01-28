
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, boost, catkin, cob-srvs, control-toolbox, dynamic-reconfigure, geometry-msgs, interactive-markers, kdl-conversions, kdl-parser, message-generation, message-runtime, orocos-kdl, roscpp, roslint, rospy, sensor-msgs, std-msgs, std-srvs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-frame-tracker";
  version = "0.8.18-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/noetic/cob_frame_tracker/0.8.18-1.tar.gz";
    name = "0.8.18-1.tar.gz";
    sha256 = "b012cf74c31c3a651a60a63450a20f530071ce0ff67bd1f1f0be3113a708c875";
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


# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, angles, catkin, control-msgs, geometry-msgs, kdl-conversions, kdl-parser, message-generation, message-runtime, move-base-msgs, orocos-kdl, roscpp, rospy, sensor-msgs, tf, tf-conversions, tf2-ros, trajectory-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-lookat-action";
  version = "0.7.5-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_manipulation-release/archive/release/noetic/cob_lookat_action/0.7.5-1.tar.gz";
    name = "0.7.5-1.tar.gz";
    sha256 = "4c47a79bed362a244a73a62ea0aa78f5cbb1145075bccd49c58ad75a785919df";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs angles control-msgs geometry-msgs kdl-conversions kdl-parser message-runtime move-base-msgs orocos-kdl roscpp rospy sensor-msgs tf tf-conversions tf2-ros trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_lookat_action'';
    license = with lib.licenses; [ asl20 ];
  };
}

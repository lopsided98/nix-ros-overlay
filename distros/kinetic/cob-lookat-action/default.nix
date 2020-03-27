
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, angles, catkin, control-msgs, geometry-msgs, kdl-conversions, kdl-parser, message-generation, message-runtime, move-base-msgs, orocos-kdl, roscpp, rospy, sensor-msgs, tf, tf-conversions, tf2-ros, trajectory-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-lookat-action";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_manipulation-release/archive/release/kinetic/cob_lookat_action/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "fcb2252f64affb84bab51566010b7c096eae04653ad095787b7ae5582b866e6e";
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

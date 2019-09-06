
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, rospy, actionlib, tf-conversions, tf, geometry-msgs, message-generation, message-runtime, angles, kdl-conversions, orocos-kdl, control-msgs, trajectory-msgs, catkin, tf2-ros, move-base-msgs, roscpp, kdl-parser, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-lookat-action";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_manipulation-release/archive/release/kinetic/cob_lookat_action/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "5366d223aa9e3f5abd31e0b2cc0ea2f9209fec64b6d9478fd9e9d858c4f6a34f";
  };

  buildType = "catkin";
  buildInputs = [ kdl-conversions kdl-parser orocos-kdl actionlib-msgs control-msgs trajectory-msgs sensor-msgs roscpp tf2-ros move-base-msgs message-generation actionlib tf-conversions angles tf geometry-msgs ];
  propagatedBuildInputs = [ kdl-conversions kdl-parser orocos-kdl actionlib-msgs control-msgs trajectory-msgs sensor-msgs roscpp tf2-ros move-base-msgs message-runtime tf-conversions actionlib rospy angles tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_lookat_action'';
    license = with lib.licenses; [ asl20 ];
  };
}

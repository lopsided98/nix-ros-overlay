
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, tf, actionlib-msgs, kdl-parser, sensor-msgs, tf2-ros, move-base-msgs, orocos-kdl, catkin, roscpp, angles, rospy, message-generation, kdl-conversions, control-msgs, trajectory-msgs, actionlib, message-runtime, tf-conversions }:
buildRosPackage {
  pname = "ros-kinetic-cob-lookat-action";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_manipulation-release/archive/release/kinetic/cob_lookat_action/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "5366d223aa9e3f5abd31e0b2cc0ea2f9209fec64b6d9478fd9e9d858c4f6a34f";
  };

  buildType = "catkin";
  buildInputs = [ tf2-ros orocos-kdl sensor-msgs trajectory-msgs geometry-msgs actionlib tf kdl-parser actionlib-msgs control-msgs roscpp angles message-generation tf-conversions kdl-conversions move-base-msgs ];
  propagatedBuildInputs = [ tf2-ros orocos-kdl sensor-msgs trajectory-msgs geometry-msgs message-runtime move-base-msgs tf actionlib actionlib-msgs control-msgs roscpp angles rospy tf-conversions kdl-conversions kdl-parser ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_lookat_action'';
    license = with lib.licenses; [ asl20 ];
  };
}

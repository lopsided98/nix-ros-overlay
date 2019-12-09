
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, tf, actionlib-msgs, kdl-parser, sensor-msgs, tf2-ros, move-base-msgs, orocos-kdl, catkin, roscpp, angles, rospy, message-generation, kdl-conversions, control-msgs, trajectory-msgs, actionlib, message-runtime, tf-conversions }:
buildRosPackage {
  pname = "ros-melodic-cob-lookat-action";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_manipulation-release/archive/release/melodic/cob_lookat_action/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "f2e96f51e1c6a62fab268d598aafe9d5f066a9ed92b0864a830c6a94c6952831";
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

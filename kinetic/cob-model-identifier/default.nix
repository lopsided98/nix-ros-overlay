
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, kdl-parser, roslint, orocos-kdl, boost, cmake-modules, sensor-msgs, catkin, roscpp, rospy, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-model-identifier";
  version = "0.7.4";

  src = fetchurl {
    url = https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_model_identifier/0.7.4-0.tar.gz;
    sha256 = "dc1fb3802509fd59028e2a5ac05c198280804e857b79ad1536b3cc08a4549c58";
  };

  propagatedBuildInputs = [ std-srvs kdl-parser orocos-kdl boost roslint cmake-modules sensor-msgs roscpp rospy tf geometry-msgs ];
  nativeBuildInputs = [ std-srvs kdl-parser orocos-kdl boost roslint cmake-modules sensor-msgs catkin roscpp tf geometry-msgs ];

  meta = {
    description = ''The cob_model_identifier package'';
    #license = lib.licenses.Apache 2.0;
  };
}

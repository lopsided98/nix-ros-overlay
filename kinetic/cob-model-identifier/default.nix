
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, kdl-parser, roslint, orocos-kdl, boost, cmake-modules, sensor-msgs, catkin, roscpp, rospy, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-model-identifier";
  version = "0.7.3";

  src = fetchurl {
    url = https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_model_identifier/0.7.3-0.tar.gz;
    sha256 = "d61484d2a69a710d907d4e1f7a30e01702552b13d0b0b1f3d80c605cc8693493";
  };

  propagatedBuildInputs = [ std-srvs kdl-parser orocos-kdl boost roslint cmake-modules sensor-msgs roscpp rospy tf geometry-msgs ];
  nativeBuildInputs = [ std-srvs kdl-parser orocos-kdl boost roslint cmake-modules sensor-msgs catkin roscpp tf geometry-msgs ];

  meta = {
    description = ''The cob_model_identifier package'';
    #license = lib.licenses.Apache 2.0;
  };
}

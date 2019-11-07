
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, kdl-parser, orocos-kdl, cmake-modules, boost, roslint, sensor-msgs, catkin, roscpp, rospy, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-model-identifier";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_model_identifier/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "0200b17f9c36f0f0f90ecc7598233ad3bce115501b960e75bb028fa07b727133";
  };

  buildType = "catkin";
  buildInputs = [ std-srvs kdl-parser orocos-kdl cmake-modules boost roslint sensor-msgs roscpp tf geometry-msgs ];
  propagatedBuildInputs = [ std-srvs kdl-parser cmake-modules orocos-kdl boost roslint sensor-msgs roscpp rospy tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_model_identifier package'';
    license = with lib.licenses; [ asl20 ];
  };
}

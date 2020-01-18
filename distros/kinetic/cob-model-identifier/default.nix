
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake-modules, geometry-msgs, kdl-parser, orocos-kdl, roscpp, roslint, rospy, sensor-msgs, std-srvs, tf }:
buildRosPackage {
  pname = "ros-kinetic-cob-model-identifier";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_model_identifier/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "0200b17f9c36f0f0f90ecc7598233ad3bce115501b960e75bb028fa07b727133";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost cmake-modules geometry-msgs kdl-parser orocos-kdl roscpp roslint rospy sensor-msgs std-srvs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_model_identifier package'';
    license = with lib.licenses; [ asl20 ];
  };
}

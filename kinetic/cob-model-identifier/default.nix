
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, kdl-parser, orocos-kdl, cmake-modules, boost, roslint, sensor-msgs, catkin, roscpp, rospy, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-model-identifier";
  version = "0.7.8-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_model_identifier/0.7.8-1.tar.gz;
    sha256 = "3f81bf2ae0a2c481e191635083bb00c93902f8604bc6328ac457e58e66e1c895";
  };

  buildInputs = [ std-srvs kdl-parser orocos-kdl cmake-modules boost roslint sensor-msgs roscpp tf geometry-msgs ];
  propagatedBuildInputs = [ std-srvs kdl-parser orocos-kdl cmake-modules boost roslint sensor-msgs roscpp rospy tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_model_identifier package'';
    license = with lib.licenses; [ asl20 ];
  };
}

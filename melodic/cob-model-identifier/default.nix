
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, orocos-kdl, sensor-msgs, boost, geometry-msgs, std-srvs, tf, cmake-modules, catkin, roslint, roscpp, rospy, kdl-parser }:
buildRosPackage {
  pname = "ros-melodic-cob-model-identifier";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/melodic/cob_model_identifier/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "1e04326126ce9e7b5fd42e3ff2cb8840bf56c81dda46d8c1c9bc720c2c66e5e1";
  };

  buildType = "catkin";
  buildInputs = [ orocos-kdl boost sensor-msgs geometry-msgs std-srvs tf cmake-modules roslint roscpp kdl-parser ];
  propagatedBuildInputs = [ orocos-kdl sensor-msgs boost geometry-msgs std-srvs tf cmake-modules roslint roscpp rospy kdl-parser ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_model_identifier package'';
    license = with lib.licenses; [ asl20 ];
  };
}

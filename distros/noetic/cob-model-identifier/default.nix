
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake-modules, geometry-msgs, kdl-parser, orocos-kdl, roscpp, roslint, rospy, sensor-msgs, std-srvs, tf }:
buildRosPackage {
  pname = "ros-noetic-cob-model-identifier";
  version = "0.8.21-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/noetic/cob_model_identifier/0.8.21-1.tar.gz";
    name = "0.8.21-1.tar.gz";
    sha256 = "7fd0e9d07fcc5302e9472f8303ed51dfe9bfa422dfd4d0ef0aefb0a80da31704";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ boost cmake-modules geometry-msgs kdl-parser orocos-kdl roscpp roslint rospy sensor-msgs std-srvs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_model_identifier package provides nodes to analyse the system response behavior of actuators to optimally tune PID controllers to be used with cob_twist_controller framework.'';
    license = with lib.licenses; [ asl20 ];
  };
}

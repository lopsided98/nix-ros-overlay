
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake-modules, geometry-msgs, kdl-parser, orocos-kdl, roscpp, roslint, rospy, sensor-msgs, std-srvs, tf }:
buildRosPackage {
  pname = "ros-noetic-cob-model-identifier";
  version = "0.8.18-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/noetic/cob_model_identifier/0.8.18-1.tar.gz";
    name = "0.8.18-1.tar.gz";
    sha256 = "fa9ac2dbc5ce0579e9b23289e1a3d315ab1a5a6fa3139df8a2e1801f4d404fb1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost cmake-modules geometry-msgs kdl-parser orocos-kdl roscpp roslint rospy sensor-msgs std-srvs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_model_identifier package provides nodes to analyse the system response behavior of actuators to optimally tune PID controllers to be used with cob_twist_controller framework.'';
    license = with lib.licenses; [ asl20 ];
  };
}

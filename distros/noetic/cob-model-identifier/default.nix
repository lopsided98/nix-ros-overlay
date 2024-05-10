
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake-modules, geometry-msgs, kdl-parser, orocos-kdl, roscpp, roslint, rospy, sensor-msgs, std-srvs, tf }:
buildRosPackage {
  pname = "ros-noetic-cob-model-identifier";
  version = "0.8.24-r2";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_control-release/archive/release/noetic/cob_model_identifier/0.8.24-2.tar.gz";
    name = "0.8.24-2.tar.gz";
    sha256 = "4ec87c49ffacde4592b47f29573a89b0dcfc43046f79af9999860d320a3c7357";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ boost cmake-modules geometry-msgs kdl-parser orocos-kdl roscpp roslint rospy sensor-msgs std-srvs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The cob_model_identifier package provides nodes to analyse the system response behavior of actuators to optimally tune PID controllers to be used with cob_twist_controller framework.";
    license = with lib.licenses; [ asl20 ];
  };
}

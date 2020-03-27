
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake-modules, geometry-msgs, kdl-parser, orocos-kdl, roscpp, roslint, rospy, sensor-msgs, std-srvs, tf }:
buildRosPackage {
  pname = "ros-melodic-cob-model-identifier";
  version = "0.8.11-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/melodic/cob_model_identifier/0.8.11-1.tar.gz";
    name = "0.8.11-1.tar.gz";
    sha256 = "16aa799036c6c403535f71383aa9409172242081801be6759a0329c750fa6f41";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost cmake-modules geometry-msgs kdl-parser orocos-kdl roscpp roslint rospy sensor-msgs std-srvs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_model_identifier package provides nodes to analyse the system response behavior of actuators to optimally tune PID controllers to be used with cob_twist_controller framework.'';
    license = with lib.licenses; [ asl20 ];
  };
}

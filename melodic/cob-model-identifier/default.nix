
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, kdl-parser, orocos-kdl, cmake-modules, boost, roslint, sensor-msgs, catkin, roscpp, rospy, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-cob-model-identifier";
  version = "0.8.0-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_control-release/archive/release/melodic/cob_model_identifier/0.8.0-1.tar.gz;
    sha256 = "1064b368f90bb9cbc6e5d28d45d1ee8de8ba25bd810c770114e2403c87e5998a";
  };

  buildInputs = [ std-srvs kdl-parser orocos-kdl cmake-modules boost roslint sensor-msgs roscpp tf geometry-msgs ];
  propagatedBuildInputs = [ std-srvs kdl-parser orocos-kdl cmake-modules boost roslint sensor-msgs roscpp rospy tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_model_identifier package'';
    license = with lib.licenses; [ asl20 ];
  };
}

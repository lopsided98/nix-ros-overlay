
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, rospy }:
buildRosPackage {
  pname = "ros-melodic-nmc-nlp-lite";
  version = "0.0.7-r2";

  src = fetchurl {
    url = "https://github.com/nmcbins/nmc_nlp_lite-release/archive/release/melodic/nmc_nlp_lite/0.0.7-2.tar.gz";
    name = "0.0.7-2.tar.gz";
    sha256 = "70672d64024f0d40ee9dc069dee925711a44a7ecbadb93b989cd25bf3bf9e306";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The nmc_nlp_lite package'';
    license = with lib.licenses; [ mit ];
  };
}

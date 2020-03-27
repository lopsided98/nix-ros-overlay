
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, canopen-402, catkin, pluginlib, socketcan-interface }:
buildRosPackage {
  pname = "ros-melodic-cob-elmo-homing";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/melodic/cob_elmo_homing/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "99c303cdde509f54250a14be726e6a439bdc0b964eecc85f2ebcd66a0c8d58b7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ canopen-402 pluginlib socketcan-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This packagae implements the special homing procedure that is needed for old cob4/raw bases'';
    license = with lib.licenses; [ asl20 ];
  };
}

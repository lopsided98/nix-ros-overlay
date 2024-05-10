
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, canopen-402, catkin, pluginlib, socketcan-interface }:
buildRosPackage {
  pname = "ros-noetic-cob-elmo-homing";
  version = "0.7.17-r2";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_driver-release/archive/release/noetic/cob_elmo_homing/0.7.17-2.tar.gz";
    name = "0.7.17-2.tar.gz";
    sha256 = "beace1d94f4974c48ec6f9b68070c9dad9a93bf75bc3d4101fa7d25f13949649";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ canopen-402 pluginlib socketcan-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "This packagae implements the special homing procedure that is needed for old cob4/raw bases";
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, canopen-402, catkin, pluginlib, socketcan-interface }:
buildRosPackage {
  pname = "ros-noetic-cob-elmo-homing";
  version = "0.7.14-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/noetic/cob_elmo_homing/0.7.14-1.tar.gz";
    name = "0.7.14-1.tar.gz";
    sha256 = "7a87cbfc820d91e4530bb0e3e362b02424df4233210d67587639041a24bbe0a3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ canopen-402 pluginlib socketcan-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This packagae implements the special homing procedure that is needed for old cob4/raw bases'';
    license = with lib.licenses; [ asl20 ];
  };
}

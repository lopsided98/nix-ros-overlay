
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, class-loader, catkin, canopen-402, socketcan-interface }:
buildRosPackage {
  pname = "ros-melodic-cob-elmo-homing";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/melodic/cob_elmo_homing/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "1fe6ad515900832d095a352303a0dffbd7d5fb15afc15bd963f370c64f1f7a8e";
  };

  buildType = "catkin";
  buildInputs = [ class-loader canopen-402 socketcan-interface ];
  propagatedBuildInputs = [ class-loader canopen-402 socketcan-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This packagae implements the special homing procedure that is needed for old cob4/raw bases'';
    license = with lib.licenses; [ asl20 ];
  };
}

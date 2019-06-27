
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, class-loader, catkin, canopen-402 }:
buildRosPackage {
  pname = "ros-kinetic-cob-elmo-homing";
  version = "0.6.14-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_elmo_homing/0.6.14-1.tar.gz;
    sha256 = "a0f971b4d4cc1e40cdb77b71fc71b66788115dfe9684092053cecfdb68360e5b";
  };

  buildInputs = [ class-loader canopen-402 ];
  propagatedBuildInputs = [ class-loader canopen-402 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This packagae implements the special homing procedure that is needed for old cob4/raw bases'';
    license = with lib.licenses; [ asl20 ];
  };
}

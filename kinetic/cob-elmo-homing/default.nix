
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, class-loader, catkin, canopen-402, socketcan-interface }:
buildRosPackage {
  pname = "ros-kinetic-cob-elmo-homing";
  version = "0.7.0-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_elmo_homing/0.7.0-1.tar.gz;
    sha256 = "b9b6fef0b7e805be049df0b816b790d10db44a7cfe21ab1160e33f7cab857f87";
  };

  buildInputs = [ class-loader canopen-402 socketcan-interface ];
  propagatedBuildInputs = [ class-loader canopen-402 socketcan-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This packagae implements the special homing procedure that is needed for old cob4/raw bases'';
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, avrdude, catkin, rokubimini, rokubimini-bus-manager, rokubimini-msgs }:
buildRosPackage {
  pname = "ros-melodic-rokubimini-serial";
  version = "0.6.0-r3";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/melodic/rokubimini_serial/0.6.0-3/bota_driver-release-release-melodic-rokubimini_serial-0.6.0-3.tar.gz";
    name = "bota_driver-release-release-melodic-rokubimini_serial-0.6.0-3.tar.gz";
    sha256 = "bfe09c08763c66553379585efe12994280088c45b3f18cb1f52ea2957006bfe1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ avrdude rokubimini rokubimini-bus-manager rokubimini-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Rokubimini Serial implementation.'';
    license = with lib.licenses; [ asl20 ];
  };
}

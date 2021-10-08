
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, avrdude, catkin, rokubimini, rokubimini-bus-manager, rokubimini-msgs }:
buildRosPackage {
  pname = "ros-melodic-rokubimini-serial";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/melodic/rokubimini_serial/0.6.1-1/bota_driver-release-release-melodic-rokubimini_serial-0.6.1-1.tar.gz";
    name = "bota_driver-release-release-melodic-rokubimini_serial-0.6.1-1.tar.gz";
    sha256 = "03189c95343c384a677014c7dcc1ec55a3657a813a5b72b9cc13a88b7ff49d22";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ avrdude rokubimini rokubimini-bus-manager rokubimini-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Rokubimini Serial implementation.'';
    license = with lib.licenses; [ asl20 ];
  };
}

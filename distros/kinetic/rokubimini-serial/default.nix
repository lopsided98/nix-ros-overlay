
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, avrdude, catkin, rokubimini, rokubimini-bus-manager, rokubimini-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rokubimini-serial";
  version = "0.5.9-r2";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/kinetic/rokubimini_serial/0.5.9-2/bota_driver-release-release-kinetic-rokubimini_serial-0.5.9-2.tar.gz";
    name = "bota_driver-release-release-kinetic-rokubimini_serial-0.5.9-2.tar.gz";
    sha256 = "e7a16246b9ed8d2abbb7e22039416786b938054c84f0789b54bee4721430c2da";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ avrdude rokubimini rokubimini-bus-manager rokubimini-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Rokubimini Serial implementation.'';
    license = with lib.licenses; [ asl20 ];
  };
}

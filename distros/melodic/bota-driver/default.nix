
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rokubimini, rokubimini-bus-manager, rokubimini-ethercat, rokubimini-msgs, rokubimini-serial }:
buildRosPackage {
  pname = "ros-melodic-bota-driver";
  version = "0.6.0-r5";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/melodic/bota_driver/0.6.0-5/bota_driver-release-release-melodic-bota_driver-0.6.0-5.tar.gz";
    name = "bota_driver-release-release-melodic-bota_driver-0.6.0-5.tar.gz";
    sha256 = "f127c97547367d82f48c7642730df96011b2bbafbb0460524bac02a1cad6c9f1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rokubimini rokubimini-bus-manager rokubimini-ethercat rokubimini-msgs rokubimini-serial ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta package that contains all essential packages of BOTA driver.'';
    license = with lib.licenses; [ asl20 ];
  };
}

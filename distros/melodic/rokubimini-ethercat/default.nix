
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rokubimini, rokubimini-bus-manager, rokubimini-msgs, soem }:
buildRosPackage {
  pname = "ros-melodic-rokubimini-ethercat";
  version = "0.6.0-r5";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/melodic/rokubimini_ethercat/0.6.0-5/bota_driver-release-release-melodic-rokubimini_ethercat-0.6.0-5.tar.gz";
    name = "bota_driver-release-release-melodic-rokubimini_ethercat-0.6.0-5.tar.gz";
    sha256 = "154038dee6f96382a3cb09cc83f62d21da440cd71387c6560cff00418da6d345";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rokubimini rokubimini-bus-manager rokubimini-msgs soem ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Rokubimini Ethercat implementation.'';
    license = with lib.licenses; [ asl20 ];
  };
}

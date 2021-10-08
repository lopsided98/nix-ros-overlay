
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ethercat-grant, rokubimini, rokubimini-bus-manager, rokubimini-msgs, soem }:
buildRosPackage {
  pname = "ros-melodic-rokubimini-ethercat";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/melodic/rokubimini_ethercat/0.6.1-1/bota_driver-release-release-melodic-rokubimini_ethercat-0.6.1-1.tar.gz";
    name = "bota_driver-release-release-melodic-rokubimini_ethercat-0.6.1-1.tar.gz";
    sha256 = "0d8913768f976284fb54f975cca09d060a05fd26c0c405508343491c055e4c8a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ethercat-grant rokubimini rokubimini-bus-manager rokubimini-msgs soem ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Rokubimini Ethercat implementation.'';
    license = with lib.licenses; [ asl20 ];
  };
}

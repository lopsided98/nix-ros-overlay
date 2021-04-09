
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rokubimini, rokubimini-bus-manager, rokubimini-msgs, soem }:
buildRosPackage {
  pname = "ros-melodic-rokubimini-ethercat";
  version = "0.5.9-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/melodic/rokubimini_ethercat/0.5.9-1/bota_driver-release-release-melodic-rokubimini_ethercat-0.5.9-1.tar.gz";
    name = "bota_driver-release-release-melodic-rokubimini_ethercat-0.5.9-1.tar.gz";
    sha256 = "c27ad8bcf946c3f868919d483bb3101be4ec38aafa0509553e622342f12d5921";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rokubimini rokubimini-bus-manager rokubimini-msgs soem ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Rokubimini Ethercat implementation.'';
    license = with lib.licenses; [ asl20 ];
  };
}

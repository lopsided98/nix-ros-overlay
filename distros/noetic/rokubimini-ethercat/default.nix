
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ethercat-grant, rokubimini, rokubimini-bus-manager, rokubimini-msgs, soem }:
buildRosPackage {
  pname = "ros-noetic-rokubimini-ethercat";
  version = "0.6.1-r2";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/noetic/rokubimini_ethercat/0.6.1-2/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "1163e84b17992905cbcdf7ea4027d55e1bac0987722ac1b5412eb9c08c50b214";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ethercat-grant rokubimini rokubimini-bus-manager rokubimini-msgs soem ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Rokubimini Ethercat implementation.'';
    license = with lib.licenses; [ asl20 ];
  };
}

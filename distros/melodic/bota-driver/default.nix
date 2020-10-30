
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bota-device-driver, catkin, rokubimini, rokubimini-bus-manager, rokubimini-ethercat, rokubimini-factory, rokubimini-manager, rokubimini-msgs, rokubimini-serial }:
buildRosPackage {
  pname = "ros-melodic-bota-driver";
  version = "0.5.2-r2";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/repository/archive.tar.gz?ref=release/melodic/bota_driver/0.5.2-2";
    name = "archive.tar.gz";
    sha256 = "d995592d9c8d88918dfe61f23bae9881ed99cfd7011235578ed6a875ad89cbe3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ bota-device-driver rokubimini rokubimini-bus-manager rokubimini-ethercat rokubimini-factory rokubimini-manager rokubimini-msgs rokubimini-serial ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta package that contains all essential packages of BOTA driver.'';
    license = with lib.licenses; [ asl20 ];
  };
}

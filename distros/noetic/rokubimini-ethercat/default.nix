
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rokubimini, rokubimini-bus-manager, rokubimini-msgs, soem }:
buildRosPackage {
  pname = "ros-noetic-rokubimini-ethercat";
  version = "0.6.0-r3";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/noetic/rokubimini_ethercat/0.6.0-3/bota_driver-release-release-noetic-rokubimini_ethercat-0.6.0-3.tar.gz";
    name = "bota_driver-release-release-noetic-rokubimini_ethercat-0.6.0-3.tar.gz";
    sha256 = "d92e8223000be4d87f5be597201f7f9f574492ea417f41186f8b6469d82ec18b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rokubimini rokubimini-bus-manager rokubimini-msgs soem ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Rokubimini Ethercat implementation.'';
    license = with lib.licenses; [ asl20 ];
  };
}

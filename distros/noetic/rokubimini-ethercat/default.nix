
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ethercat-grant, rokubimini, rokubimini-bus-manager, rokubimini-msgs, soem }:
buildRosPackage {
  pname = "ros-noetic-rokubimini-ethercat";
  version = "0.6.1-r2";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/noetic/rokubimini_ethercat/0.6.1-2/bota_driver-release-release-noetic-rokubimini_ethercat-0.6.1-2.tar.gz";
    name = "bota_driver-release-release-noetic-rokubimini_ethercat-0.6.1-2.tar.gz";
    sha256 = "f45d85861851179df943fb6dd0908004d15513782b1b8aaa51fcc35b7f188124";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ethercat-grant rokubimini rokubimini-bus-manager rokubimini-msgs soem ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Rokubimini Ethercat implementation.'';
    license = with lib.licenses; [ asl20 ];
  };
}

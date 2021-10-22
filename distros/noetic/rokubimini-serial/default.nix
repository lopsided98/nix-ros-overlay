
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, avrdude, catkin, rokubimini, rokubimini-bus-manager, rokubimini-msgs }:
buildRosPackage {
  pname = "ros-noetic-rokubimini-serial";
  version = "0.6.1-r2";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/noetic/rokubimini_serial/0.6.1-2/bota_driver-release-release-noetic-rokubimini_serial-0.6.1-2.tar.gz";
    name = "bota_driver-release-release-noetic-rokubimini_serial-0.6.1-2.tar.gz";
    sha256 = "4e4dcc7306c6f3e9e302009d1533eeb9d62bb85419f2af604c2f1fab95c4aca5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ avrdude rokubimini rokubimini-bus-manager rokubimini-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Rokubimini Serial implementation.'';
    license = with lib.licenses; [ asl20 ];
  };
}

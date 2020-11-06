
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bota-signal-handler, bota-worker, catkin, libyamlcpp, rokubimini, rokubimini-bus-manager, rokubimini-factory }:
buildRosPackage {
  pname = "ros-melodic-rokubimini-manager";
  version = "0.5.5-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/repository/archive.tar.gz?ref=release/melodic/rokubimini_manager/0.5.5-1";
    name = "archive.tar.gz";
    sha256 = "5ef3395c753612a49d52344aea7e6f33f3c32a2629a4427a9a1124bad77d6e7a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ bota-signal-handler bota-worker libyamlcpp rokubimini rokubimini-bus-manager rokubimini-factory ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ library deriving the abstract communication interface classes in the rokubimini library for EtherCAT.'';
    license = with lib.licenses; [ asl20 ];
  };
}

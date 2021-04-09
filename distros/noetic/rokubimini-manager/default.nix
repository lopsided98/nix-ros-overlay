
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bota-signal-handler, bota-worker, catkin, libyamlcpp, rokubimini, rokubimini-bus-manager, rokubimini-factory }:
buildRosPackage {
  pname = "ros-noetic-rokubimini-manager";
  version = "0.5.9-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/noetic/rokubimini_manager/0.5.9-1/bota_driver-release-release-noetic-rokubimini_manager-0.5.9-1.tar.gz";
    name = "bota_driver-release-release-noetic-rokubimini_manager-0.5.9-1.tar.gz";
    sha256 = "75bd876cc4d47be9f086941af8cd09aaaeb7d72ea64d08e6698fd31741435c3b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ bota-signal-handler bota-worker libyamlcpp rokubimini rokubimini-bus-manager rokubimini-factory ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ library deriving the abstract communication interface classes in the rokubimini library for EtherCAT.'';
    license = with lib.licenses; [ asl20 ];
  };
}

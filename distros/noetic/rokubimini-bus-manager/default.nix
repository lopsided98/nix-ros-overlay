
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bota-node, catkin, rokubimini }:
buildRosPackage {
  pname = "ros-noetic-rokubimini-bus-manager";
  version = "0.6.0-r2";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/noetic/rokubimini_bus_manager/0.6.0-2/bota_driver-release-release-noetic-rokubimini_bus_manager-0.6.0-2.tar.gz";
    name = "bota_driver-release-release-noetic-rokubimini_bus_manager-0.6.0-2.tar.gz";
    sha256 = "7c4b930f7ec8d897d92a7a758d9577f448197a4bf4232685acb8366cc53fe35c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ bota-node rokubimini ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ library deriving the abstract communication interface classes in the rokubimini library for EtherCAT.'';
    license = with lib.licenses; [ asl20 ];
  };
}

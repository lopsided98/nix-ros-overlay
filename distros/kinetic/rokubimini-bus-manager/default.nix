
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rokubimini }:
buildRosPackage {
  pname = "ros-kinetic-rokubimini-bus-manager";
  version = "0.5.9-r2";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/kinetic/rokubimini_bus_manager/0.5.9-2/bota_driver-release-release-kinetic-rokubimini_bus_manager-0.5.9-2.tar.gz";
    name = "bota_driver-release-release-kinetic-rokubimini_bus_manager-0.5.9-2.tar.gz";
    sha256 = "e3463e43181801d1146f374f2abe3578e2e8cefc95e4066107a5f23e4170a082";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rokubimini ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ library deriving the abstract communication interface classes in the rokubimini library for EtherCAT.'';
    license = with lib.licenses; [ asl20 ];
  };
}

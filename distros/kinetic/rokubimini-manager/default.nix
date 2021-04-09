
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bota-signal-handler, bota-worker, catkin, libyamlcpp, rokubimini, rokubimini-bus-manager, rokubimini-factory }:
buildRosPackage {
  pname = "ros-kinetic-rokubimini-manager";
  version = "0.5.9-r2";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/kinetic/rokubimini_manager/0.5.9-2/bota_driver-release-release-kinetic-rokubimini_manager-0.5.9-2.tar.gz";
    name = "bota_driver-release-release-kinetic-rokubimini_manager-0.5.9-2.tar.gz";
    sha256 = "a4c368d66a7cf4df89812f9ec1ef8ba9d53388dd713094581b63ef89299dae5c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ bota-signal-handler bota-worker libyamlcpp rokubimini rokubimini-bus-manager rokubimini-factory ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ library deriving the abstract communication interface classes in the rokubimini library for EtherCAT.'';
    license = with lib.licenses; [ asl20 ];
  };
}

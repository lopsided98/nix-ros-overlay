
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bota-signal-handler, bota-worker, catkin, libyamlcpp, rokubimini, rokubimini-bus-manager, rokubimini-factory }:
buildRosPackage {
  pname = "ros-melodic-rokubimini-manager";
  version = "0.5.2-r2";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/repository/archive.tar.gz?ref=release/melodic/rokubimini_manager/0.5.2-2";
    name = "archive.tar.gz";
    sha256 = "83eb2b0545da49e0c78cbd8583b9f13fcab9f9293f78e7e86eb387464db0df63";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ bota-signal-handler bota-worker libyamlcpp rokubimini rokubimini-bus-manager rokubimini-factory ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ library deriving the abstract communication interface classes in the rokubimini library for EtherCAT.'';
    license = with lib.licenses; [ asl20 ];
  };
}

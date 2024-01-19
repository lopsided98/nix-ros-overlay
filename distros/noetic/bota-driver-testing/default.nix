
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bota-node, catkin, geometry-msgs, gtest, rokubimini, rokubimini-bus-manager, rokubimini-ethercat, rokubimini-msgs, rokubimini-serial, rosgraph-msgs, rostest, rosunit }:
buildRosPackage {
  pname = "ros-noetic-bota-driver-testing";
  version = "0.6.1-r2";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/noetic/bota_driver_testing/0.6.1-2/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "c1a448ea4a778515d533464276bcbe951f5dc6a2e9a46874ca83deb1bf5504da";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ gtest rosunit ];
  propagatedBuildInputs = [ bota-node geometry-msgs rokubimini rokubimini-bus-manager rokubimini-ethercat rokubimini-msgs rokubimini-serial rosgraph-msgs rostest ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS node for communicating with rokubimini sensors'';
    license = with lib.licenses; [ asl20 ];
  };
}

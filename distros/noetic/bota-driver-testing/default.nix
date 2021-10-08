
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bota-node, catkin, geometry-msgs, gtest, rokubimini, rokubimini-bus-manager, rokubimini-ethercat, rokubimini-msgs, rokubimini-serial, rosgraph-msgs, rostest, rosunit }:
buildRosPackage {
  pname = "ros-noetic-bota-driver-testing";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/noetic/bota_driver_testing/0.6.1-1/bota_driver-release-release-noetic-bota_driver_testing-0.6.1-1.tar.gz";
    name = "bota_driver-release-release-noetic-bota_driver_testing-0.6.1-1.tar.gz";
    sha256 = "ac50c8e4df53bcde4aa759a249b37ffde265f8382aa38eddf13b4ef00bd164eb";
  };

  buildType = "catkin";
  checkInputs = [ gtest rosunit ];
  propagatedBuildInputs = [ bota-node geometry-msgs rokubimini rokubimini-bus-manager rokubimini-ethercat rokubimini-msgs rokubimini-serial rosgraph-msgs rostest ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS node for communicating with rokubimini sensors'';
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bota-node, catkin, geometry-msgs, gtest, rokubimini, rokubimini-bus-manager, rokubimini-ethercat, rokubimini-msgs, rokubimini-serial, rosgraph-msgs, rostest, rosunit }:
buildRosPackage {
  pname = "ros-melodic-bota-driver-testing";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/melodic/bota_driver_testing/0.6.1-1/bota_driver-release-release-melodic-bota_driver_testing-0.6.1-1.tar.gz";
    name = "bota_driver-release-release-melodic-bota_driver_testing-0.6.1-1.tar.gz";
    sha256 = "66542da7abaf7112dedfb4b4e2710ec8b6e0ed9896174de95ddf66c9ea08be12";
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

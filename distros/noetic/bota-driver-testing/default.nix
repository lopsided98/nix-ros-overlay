
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bota-node, catkin, geometry-msgs, gtest, rokubimini, rokubimini-bus-manager, rokubimini-ethercat, rokubimini-msgs, rokubimini-serial, rosgraph-msgs, rostest, rosunit }:
buildRosPackage {
  pname = "ros-noetic-bota-driver-testing";
  version = "0.6.1-r2";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/noetic/bota_driver_testing/0.6.1-2/bota_driver-release-release-noetic-bota_driver_testing-0.6.1-2.tar.gz";
    name = "bota_driver-release-release-noetic-bota_driver_testing-0.6.1-2.tar.gz";
    sha256 = "1b24dff517d15502be681786d9080ef32b006f8f7a4bd7e9a577e5f041b27430";
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

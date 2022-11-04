
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bota-node, catkin, geometry-msgs, gtest, rokubimini, rokubimini-bus-manager, rokubimini-ethercat, rokubimini-msgs, rokubimini-serial, rosgraph-msgs, rostest, rosunit }:
buildRosPackage {
  pname = "ros-melodic-bota-driver-testing";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/melodic/bota_driver_testing/0.6.1-1/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "e046206fae92a78bc743d1dfd1acb1116e904932ab1c9b54998eeb47f3358b59";
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

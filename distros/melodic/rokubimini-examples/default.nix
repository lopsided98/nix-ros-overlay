
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rokubimini, rokubimini-manager }:
buildRosPackage {
  pname = "ros-melodic-rokubimini-examples";
  version = "0.5.8-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/repository/archive.tar.gz?ref=release/melodic/rokubimini_examples/0.5.8-1";
    name = "archive.tar.gz";
    sha256 = "31d6f42572d4617e96e8ee5e3463c21858c4209a19b3f92038eaf7a6c20fced9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rokubimini rokubimini-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ library deriving the abstract communication interface classes in the rokubimini library for EtherCAT.'';
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rokubimini, rokubimini-manager }:
buildRosPackage {
  pname = "ros-melodic-rokubimini-examples";
  version = "0.5.5-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/repository/archive.tar.gz?ref=release/melodic/rokubimini_examples/0.5.5-1";
    name = "archive.tar.gz";
    sha256 = "4ad3498283374d257901b67f51043195c95b86225ae36f7f25c331d98a56b303";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rokubimini rokubimini-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ library deriving the abstract communication interface classes in the rokubimini library for EtherCAT.'';
    license = with lib.licenses; [ asl20 ];
  };
}

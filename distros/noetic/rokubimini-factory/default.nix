
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libyamlcpp, rokubimini, rokubimini-bus-manager, rokubimini-ethercat, rokubimini-serial }:
buildRosPackage {
  pname = "ros-noetic-rokubimini-factory";
  version = "0.5.8-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/repository/archive.tar.gz?ref=release/noetic/rokubimini_factory/0.5.8-1";
    name = "archive.tar.gz";
    sha256 = "2d3a99e4b97a4d476873d6c2f44e312e67ada31d73fe0ea785cf5fe0bd9ec02f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ libyamlcpp rokubimini rokubimini-bus-manager rokubimini-ethercat rokubimini-serial ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ library deriving the abstract communication interface classes in the rokubimini library for EtherCAT.'';
    license = with lib.licenses; [ asl20 ];
  };
}

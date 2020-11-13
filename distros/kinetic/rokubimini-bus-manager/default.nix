
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rokubimini }:
buildRosPackage {
  pname = "ros-kinetic-rokubimini-bus-manager";
  version = "0.5.6-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/repository/archive.tar.gz?ref=release/kinetic/rokubimini_bus_manager/0.5.6-1";
    name = "archive.tar.gz";
    sha256 = "5906fc50b9b8077b40eec36d9c97bbb5e20f5873643ce277d012d9c7892d0df2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rokubimini ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ library deriving the abstract communication interface classes in the rokubimini library for EtherCAT.'';
    license = with lib.licenses; [ asl20 ];
  };
}

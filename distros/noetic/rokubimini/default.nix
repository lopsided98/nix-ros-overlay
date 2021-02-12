
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, geometry-msgs, libyamlcpp, roscpp, roslib, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-rokubimini";
  version = "0.5.9-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/repository/archive.tar.gz?ref=release/noetic/rokubimini/0.5.9-1";
    name = "archive.tar.gz";
    sha256 = "7a0e3cf4712ba9319fb1a5019868ab45ebd73d1f95684c90d838c9fb94c7bea0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ eigen geometry-msgs libyamlcpp roscpp roslib sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ library deriving the abstract communication interface classes in the rokubimini library for EtherCAT.'';
    license = with lib.licenses; [ asl20 ];
  };
}

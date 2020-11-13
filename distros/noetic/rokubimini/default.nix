
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, geometry-msgs, libyamlcpp, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-rokubimini";
  version = "0.5.7-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/repository/archive.tar.gz?ref=release/noetic/rokubimini/0.5.7-1";
    name = "archive.tar.gz";
    sha256 = "adbd191ea10b4dd3253f74cfc4259c7d1238c5b9766fd6ebcdd4b1da46ba2140";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ eigen geometry-msgs libyamlcpp roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ library deriving the abstract communication interface classes in the rokubimini library for EtherCAT.'';
    license = with lib.licenses; [ asl20 ];
  };
}

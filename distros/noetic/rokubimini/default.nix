
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, geometry-msgs, gtest, roscpp, rosunit, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-rokubimini";
  version = "0.6.1-r2";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/noetic/rokubimini/0.6.1-2/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "bc1d4686d9562b6db34f6b84872a72e0254c32990e8887ca5ae15bce999fb745";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ gtest rosunit ];
  propagatedBuildInputs = [ eigen geometry-msgs roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ library deriving the abstract communication interface classes in the rokubimini library for EtherCAT.'';
    license = with lib.licenses; [ asl20 ];
  };
}

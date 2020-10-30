
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen, geometry-msgs, libyamlcpp, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-rokubimini";
  version = "0.5.2-r2";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/repository/archive.tar.gz?ref=release/melodic/rokubimini/0.5.2-2";
    name = "archive.tar.gz";
    sha256 = "0b740616a3aa3f6b55a8f2ff5a614b6a1cd96dd6d35b52888457d04b648ac537";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cmake-modules eigen geometry-msgs libyamlcpp roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ library deriving the abstract communication interface classes in the rokubimini library for EtherCAT.'';
    license = with lib.licenses; [ asl20 ];
  };
}

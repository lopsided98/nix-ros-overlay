
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, geometry-msgs, libyamlcpp, roscpp, roslib, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-rokubimini";
  version = "0.5.9-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/repository/archive.tar.gz?ref=release/melodic/rokubimini/0.5.9-1";
    name = "archive.tar.gz";
    sha256 = "e1b1466a0d14d496cd0b72cd2a1801189ca7d32f8aca7a44aa7631e549d640cc";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ eigen geometry-msgs libyamlcpp roscpp roslib sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ library deriving the abstract communication interface classes in the rokubimini library for EtherCAT.'';
    license = with lib.licenses; [ asl20 ];
  };
}

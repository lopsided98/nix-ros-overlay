
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, geometry-msgs, libyamlcpp, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rokubimini";
  version = "0.5.6-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/repository/archive.tar.gz?ref=release/kinetic/rokubimini/0.5.6-1";
    name = "archive.tar.gz";
    sha256 = "100dab027bde760660d57ebb449849e0a54b490cd08e55d578b2b77c89f93d2f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ eigen geometry-msgs libyamlcpp roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ library deriving the abstract communication interface classes in the rokubimini library for EtherCAT.'';
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, geometry-msgs, libyamlcpp, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-rokubimini";
  version = "0.5.5-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/repository/archive.tar.gz?ref=release/melodic/rokubimini/0.5.5-1";
    name = "archive.tar.gz";
    sha256 = "88636454ff450b0499d999c3e44161ff07ae25c13087c7a98589de29bbcf60e7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ eigen geometry-msgs libyamlcpp roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ library deriving the abstract communication interface classes in the rokubimini library for EtherCAT.'';
    license = with lib.licenses; [ asl20 ];
  };
}

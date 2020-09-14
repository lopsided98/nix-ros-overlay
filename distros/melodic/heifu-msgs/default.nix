
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-heifu-msgs";
  version = "0.7.1-r2";

  src = fetchurl {
    url = "https://github.com/amferreiraBEV/heifu-release/archive/release/melodic/heifu_msgs/0.7.1-2.tar.gz";
    name = "0.7.1-2.tar.gz";
    sha256 = "7034e4fce46696773f1b0ebadd357d98a89467c35c8d6cd5d9622fead6e0b31d";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common message definitions for heifu'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

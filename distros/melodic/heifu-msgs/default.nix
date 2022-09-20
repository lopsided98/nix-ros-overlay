
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-heifu-msgs";
  version = "0.7.7-r2";

  src = fetchurl {
    url = "https://github.com/BV-OpenSource/heifu-release/archive/release/melodic/heifu_msgs/0.7.7-2.tar.gz";
    name = "0.7.7-2.tar.gz";
    sha256 = "59ead4d32ce7668d215daac5aa4616f7a03c5e56e4940c671435da114d3df871";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common message definitions for heifu'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

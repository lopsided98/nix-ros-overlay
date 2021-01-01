
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-heifu-msgs";
  version = "0.7.6-r1";

  src = fetchurl {
    url = "https://github.com/BV-OpenSource/heifu-release/archive/release/melodic/heifu_msgs/0.7.6-1.tar.gz";
    name = "0.7.6-1.tar.gz";
    sha256 = "7247f7c6401853853463ee2084568f8de6f6591e1130407a3c3577e30fa9bd3a";
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


# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, SDL, boost, sensor-msgs, cv-bridge, catkin, message-generation, message-runtime, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-nerian-sp1";
  version = "1.6.3";

  src = fetchurl {
    url = https://github.com/nerian-vision/nerian_sp1-release/archive/release/kinetic/nerian_sp1/1.6.3-0.tar.gz;
    sha256 = "762f0d92554264c1da7e8e398f9d1c37cd04f91d223d84de29c79871393d8d08";
  };

  propagatedBuildInputs = [ SDL message-runtime boost std-msgs sensor-msgs cv-bridge roscpp ];
  nativeBuildInputs = [ message-generation SDL boost catkin std-msgs sensor-msgs cv-bridge roscpp ];

  meta = {
    description = ''Node for the SP1 Stereo Vision System by Nerian Vision Technologies'';
    #license = lib.licenses.MIT;
  };
}

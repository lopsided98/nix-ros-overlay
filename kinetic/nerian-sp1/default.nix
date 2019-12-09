
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, sensor-msgs, boost, SDL, std-msgs, catkin, cv-bridge, roscpp, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-nerian-sp1";
  version = "1.6.3";

  src = fetchurl {
    url = "https://github.com/nerian-vision/nerian_sp1-release/archive/release/kinetic/nerian_sp1/1.6.3-0.tar.gz";
    name = "1.6.3-0.tar.gz";
    sha256 = "762f0d92554264c1da7e8e398f9d1c37cd04f91d223d84de29c79871393d8d08";
  };

  buildType = "catkin";
  buildInputs = [ boost sensor-msgs std-msgs SDL cv-bridge roscpp message-generation ];
  propagatedBuildInputs = [ boost sensor-msgs std-msgs SDL cv-bridge roscpp message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Node for the SP1 Stereo Vision System by Nerian Vision Technologies'';
    license = with lib.licenses; [ mit ];
  };
}

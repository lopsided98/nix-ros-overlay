
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, SDL, boost, catkin, cv-bridge, message-generation, message-runtime, roscpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-nerian-sp1";
  version = "1.6.3";

  src = fetchurl {
    url = "https://github.com/nerian-vision/nerian_sp1-release/archive/release/kinetic/nerian_sp1/1.6.3-0.tar.gz";
    name = "1.6.3-0.tar.gz";
    sha256 = "762f0d92554264c1da7e8e398f9d1c37cd04f91d223d84de29c79871393d8d08";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ SDL boost cv-bridge message-runtime roscpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Node for the SP1 Stereo Vision System by Nerian Vision Technologies'';
    license = with lib.licenses; [ mit ];
  };
}

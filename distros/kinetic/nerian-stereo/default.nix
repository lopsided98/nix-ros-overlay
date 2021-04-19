
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, curl, cv-bridge, dynamic-reconfigure, message-generation, message-runtime, nodelet, roscpp, sensor-msgs, std-msgs, stereo-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-kinetic-nerian-stereo";
  version = "3.9.0-r3";

  src = fetchurl {
    url = "https://github.com/nerian-vision/nerian_stereo-release/archive/release/kinetic/nerian_stereo/3.9.0-3.tar.gz";
    name = "3.9.0-3.tar.gz";
    sha256 = "694b8b6be5e0ff0c4497ce88a901d5ba3a078cad83d69d3a8241bb66239fbd71";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ boost curl cv-bridge dynamic-reconfigure message-runtime nodelet roscpp sensor-msgs std-msgs stereo-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver node for Scarlet and SceneScan stereo vision sensors by Nerian Vision GmbH'';
    license = with lib.licenses; [ mit ];
  };
}

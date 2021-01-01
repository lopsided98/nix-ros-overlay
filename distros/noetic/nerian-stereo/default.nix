
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, curl, cv-bridge, dynamic-reconfigure, message-generation, message-runtime, nodelet, roscpp, sensor-msgs, std-msgs, stereo-msgs }:
buildRosPackage {
  pname = "ros-noetic-nerian-stereo";
  version = "3.8.1-r1";

  src = fetchurl {
    url = "https://github.com/nerian-vision/nerian_stereo-release/archive/release/noetic/nerian_stereo/3.8.1-1.tar.gz";
    name = "3.8.1-1.tar.gz";
    sha256 = "8f11a621aa83524b23965991bd4937589a91c0c07ff44db1e281136c1b4a23a7";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ boost curl cv-bridge dynamic-reconfigure message-runtime nodelet roscpp sensor-msgs std-msgs stereo-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver node for SceneScan and SP1 stereo vision sensors by Nerian Vision GmbH'';
    license = with lib.licenses; [ mit ];
  };
}

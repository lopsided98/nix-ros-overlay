
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, sensor-msgs, boost, dynamic-reconfigure, std-msgs, catkin, cv-bridge, nodelet, roscpp, message-runtime, curl }:
buildRosPackage {
  pname = "ros-kinetic-nerian-stereo";
  version = "3.6.0-r1";

  src = fetchurl {
    url = "https://github.com/nerian-vision/nerian_stereo-release/archive/release/kinetic/nerian_stereo/3.6.0-1.tar.gz";
    name = "3.6.0-1.tar.gz";
    sha256 = "6989933355e16b6f44e3ab24d105c36dba12ef0b5f70684b563d69cc96082915";
  };

  buildType = "catkin";
  buildInputs = [ boost sensor-msgs dynamic-reconfigure std-msgs cv-bridge nodelet roscpp message-generation ];
  propagatedBuildInputs = [ boost sensor-msgs dynamic-reconfigure std-msgs cv-bridge nodelet roscpp message-runtime curl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver node for SceneScan and SP1 stereo vision sensors by Nerian Vision GmbH'';
    license = with lib.licenses; [ mit ];
  };
}

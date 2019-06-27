
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, sensor-msgs, cv-bridge, catkin, message-generation, curl, message-runtime, dynamic-reconfigure, std-msgs, nodelet, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-nerian-stereo";
  version = "3.4.0-r1";

  src = fetchurl {
    url = https://github.com/nerian-vision/nerian_stereo-release/archive/release/kinetic/nerian_stereo/3.4.0-1.tar.gz;
    sha256 = "66ab2a36a72982e79af73a1ea4a9088966e403ece3bc54e5db29cb0df9823d08";
  };

  buildInputs = [ boost sensor-msgs cv-bridge roscpp message-generation dynamic-reconfigure std-msgs nodelet ];
  propagatedBuildInputs = [ boost sensor-msgs cv-bridge curl nodelet dynamic-reconfigure std-msgs message-runtime roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver node for SceneScan and SP1 stereo vision sensors by Nerian Vision GmbH'';
    license = with lib.licenses; [ mit ];
  };
}

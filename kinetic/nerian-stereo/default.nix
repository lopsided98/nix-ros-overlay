
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, sensor-msgs, cv-bridge, catkin, message-generation, curl, message-runtime, dynamic-reconfigure, std-msgs, nodelet, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-nerian-stereo";
  version = "3.5.0-r1";

  src = fetchurl {
    url = "https://github.com/nerian-vision/nerian_stereo-release/archive/release/kinetic/nerian_stereo/3.5.0-1.tar.gz";
    name = "3.5.0-1.tar.gz";
    sha256 = "d386db2a1b300af4f476bd4946ef2a41c772e8310434824aebada4d1c6e6b5dc";
  };

  buildType = "catkin";
  buildInputs = [ boost sensor-msgs cv-bridge roscpp message-generation dynamic-reconfigure std-msgs nodelet ];
  propagatedBuildInputs = [ boost sensor-msgs cv-bridge curl nodelet dynamic-reconfigure std-msgs message-runtime roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver node for SceneScan and SP1 stereo vision sensors by Nerian Vision GmbH'';
    license = with lib.licenses; [ mit ];
  };
}

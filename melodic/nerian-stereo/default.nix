
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, curl, cv-bridge, dynamic-reconfigure, message-generation, message-runtime, nodelet, roscpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-nerian-stereo";
  version = "3.6.0-r1";

  src = fetchurl {
    url = "https://github.com/nerian-vision/nerian_stereo-release/archive/release/melodic/nerian_stereo/3.6.0-1.tar.gz";
    name = "3.6.0-1.tar.gz";
    sha256 = "80f089c8d22cb880e1653dccedf1f29eafd1a68819b6efe0bd32f4bf568f6acf";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ boost curl cv-bridge dynamic-reconfigure message-runtime nodelet roscpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver node for SceneScan and SP1 stereo vision sensors by Nerian Vision GmbH'';
    license = with lib.licenses; [ mit ];
  };
}

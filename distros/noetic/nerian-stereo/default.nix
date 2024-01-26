
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, curl, cv-bridge, dynamic-reconfigure, message-generation, message-runtime, nodelet, roscpp, sensor-msgs, std-msgs, stereo-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-nerian-stereo";
  version = "3.11.1-r2";

  src = fetchurl {
    url = "https://github.com/nerian-vision/nerian_stereo-release/archive/release/noetic/nerian_stereo/3.11.1-2.tar.gz";
    name = "3.11.1-2.tar.gz";
    sha256 = "26ded25b9cf0cf46878a6f7be3436bf97ae88089e050712b99b0ce15e4eec49c";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ boost curl cv-bridge dynamic-reconfigure message-runtime nodelet roscpp sensor-msgs std-msgs stereo-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver node for Scarlet and SceneScan stereo vision sensors by Nerian Vision GmbH'';
    license = with lib.licenses; [ mit ];
  };
}

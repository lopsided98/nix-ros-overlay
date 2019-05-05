
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, sensor-msgs, cv-bridge, catkin, message-generation, curl, message-runtime, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-lunar-nerian-stereo";
  version = "3.3.2";

  src = fetchurl {
    url = https://github.com/nerian-vision/nerian_stereo-release/archive/release/lunar/nerian_stereo/3.3.2-0.tar.gz;
    sha256 = "6dd47f343f0417ce394cd18e375a9cc3b0ef6be7d2e22afb513c2e99c3595a7c";
  };

  buildInputs = [ boost sensor-msgs cv-bridge message-generation std-msgs roscpp ];
  propagatedBuildInputs = [ boost sensor-msgs cv-bridge curl message-runtime std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver node for SceneScan and SP1 stereo vision sensors by Nerian Vision Technologies'';
    license = with lib.licenses; [ mit ];
  };
}


# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, sensor-msgs, cv-bridge, catkin, message-generation, curl, message-runtime, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-nerian-stereo";
  version = "3.3.2";

  src = fetchurl {
    url = https://github.com/nerian-vision/nerian_stereo-release/archive/release/kinetic/nerian_stereo/3.3.2-0.tar.gz;
    sha256 = "f38c78caa707440a0e4f20c8357513813240d92a058b56ca3b239a475ab85a00";
  };

  buildInputs = [ message-generation boost std-msgs sensor-msgs cv-bridge roscpp ];
  propagatedBuildInputs = [ cv-bridge boost curl message-runtime std-msgs sensor-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver node for SceneScan and SP1 stereo vision sensors by Nerian Vision Technologies'';
    #license = lib.licenses.MIT;
  };
}

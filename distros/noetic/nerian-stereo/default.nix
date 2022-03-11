
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, curl, cv-bridge, dynamic-reconfigure, message-generation, message-runtime, nodelet, roscpp, sensor-msgs, std-msgs, stereo-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-nerian-stereo";
  version = "3.9.1-r1";

  src = fetchurl {
    url = "https://github.com/nerian-vision/nerian_stereo-release/archive/release/noetic/nerian_stereo/3.9.1-1.tar.gz";
    name = "3.9.1-1.tar.gz";
    sha256 = "945a07fb5c85e0c49c8197a74a3d11971469e263ff82ee3d1f765161e1dd9f52";
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


# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, curl, cv-bridge, dynamic-reconfigure, message-generation, message-runtime, nodelet, roscpp, sensor-msgs, std-msgs, stereo-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-nerian-stereo";
  version = "3.11.0-r1";

  src = fetchurl {
    url = "https://github.com/nerian-vision/nerian_stereo-release/archive/release/melodic/nerian_stereo/3.11.0-1.tar.gz";
    name = "3.11.0-1.tar.gz";
    sha256 = "69af5ec4c030b10897f1505a1244c3eb57bf1e6149492f38d9bc7fed2926835f";
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


# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, curl, cv-bridge, dynamic-reconfigure, message-generation, message-runtime, nodelet, roscpp, sensor-msgs, std-msgs, stereo-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-nerian-stereo";
  version = "3.10.0-r1";

  src = fetchurl {
    url = "https://github.com/nerian-vision/nerian_stereo-release/archive/release/melodic/nerian_stereo/3.10.0-1.tar.gz";
    name = "3.10.0-1.tar.gz";
    sha256 = "5fe38746fbafe7c2c9a0d02f81184f9e7706b729ab3b244e99e41cceea49b8ae";
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

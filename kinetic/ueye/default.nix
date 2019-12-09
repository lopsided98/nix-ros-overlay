
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamic-reconfigure, catkin, roslib, image-transport, camera-calibration-parsers, nodelet, roscpp, roslaunch, rostest }:
buildRosPackage {
  pname = "ros-kinetic-ueye";
  version = "0.0.10";

  src = fetchurl {
    url = "https://github.com/kmhallen/ueye-release/archive/release/kinetic/ueye/0.0.10-0.tar.gz";
    name = "0.0.10-0.tar.gz";
    sha256 = "f1c2687559e090ce3a4e5c4fceb484286894f0e33ff114dda6ccb6b831600b52";
  };

  buildType = "catkin";
  buildInputs = [ dynamic-reconfigure roslaunch roslib image-transport nodelet roscpp camera-calibration-parsers rostest ];
  propagatedBuildInputs = [ dynamic-reconfigure roslib image-transport nodelet roscpp camera-calibration-parsers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for IDS Imaging uEye cameras.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

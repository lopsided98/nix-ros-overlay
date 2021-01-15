
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-calibration-parsers, catkin, dynamic-reconfigure, image-transport, nodelet, roscpp, roslaunch, roslib, rostest }:
buildRosPackage {
  pname = "ros-kinetic-ueye";
  version = "0.0.10";

  src = fetchurl {
    url = "https://github.com/kmhallen/ueye-release/archive/release/kinetic/ueye/0.0.10-0.tar.gz";
    name = "0.0.10-0.tar.gz";
    sha256 = "f1c2687559e090ce3a4e5c4fceb484286894f0e33ff114dda6ccb6b831600b52";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ camera-calibration-parsers dynamic-reconfigure image-transport nodelet roscpp roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for IDS Imaging uEye cameras.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

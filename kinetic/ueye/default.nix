
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-calibration-parsers, image-transport, catkin, rostest, roslib, nodelet, dynamic-reconfigure, roslaunch, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-ueye";
  version = "0.0.10";

  src = fetchurl {
    url = https://github.com/kmhallen/ueye-release/archive/release/kinetic/ueye/0.0.10-0.tar.gz;
    sha256 = "f1c2687559e090ce3a4e5c4fceb484286894f0e33ff114dda6ccb6b831600b52";
  };

  propagatedBuildInputs = [ roslib nodelet dynamic-reconfigure camera-calibration-parsers image-transport roscpp ];
  nativeBuildInputs = [ camera-calibration-parsers image-transport catkin roscpp rostest nodelet dynamic-reconfigure roslaunch roslib ];

  meta = {
    description = ''Driver for IDS Imaging uEye cameras.'';
    #license = lib.licenses.BSD;
  };
}


# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, qt5, rosbag-storage, roscpp, rosgraph-msgs }:
buildRosPackage {
  pname = "ros-noetic-swri-console";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/swri_console-release/archive/release/noetic/swri_console/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "a4d06a2b1af47088c200a94adcc12a38c7108e63cacc3e354fac93782e983ff8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost qt5.qtbase rosbag-storage roscpp rosgraph-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A rosout GUI viewer developed at Southwest Research Insititute as an
     alternative to rqt_console.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

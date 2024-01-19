
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, qt5, rosbag-storage, roscpp, rosgraph-msgs }:
buildRosPackage {
  pname = "ros-noetic-swri-console";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/swri_console-release/archive/release/noetic/swri_console/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "6d962fe253fdb21aa00af5eabadc5f6cfdc9385ac5ee4ac3814b959830886ec7";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ boost qt5.qtbase rosbag-storage roscpp rosgraph-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A rosout GUI viewer developed at Southwest Research Insititute as an
     alternative to rqt_console.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

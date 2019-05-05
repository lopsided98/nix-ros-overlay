
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbag-storage, boost, catkin, rosgraph-msgs, qt5, roscpp }:
buildRosPackage {
  pname = "ros-lunar-swri-console";
  version = "1.1.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/swri_console-release/archive/release/lunar/swri_console/1.1.0-0.tar.gz;
    sha256 = "3c6d0f1a80e121be1da18aee63c78d0c477ce5aa0f8351b0871a5f288e2e7804";
  };

  buildInputs = [ rosbag-storage boost qt5.qtbase rosgraph-msgs roscpp ];
  propagatedBuildInputs = [ rosbag-storage boost qt5.qtbase rosgraph-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A rosout GUI viewer developed at Southwest Research Insititute as an
     alternative to rqt_console.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

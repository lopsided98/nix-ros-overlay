
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dataspeed-pds-msgs, python-qt-binding, python3Packages, rospy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-noetic-dataspeed-pds-rqt";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_pds-release/archive/release/noetic/dataspeed_pds_rqt/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "bbb99a9aa319880f7f8f23a2c835d61025249f938e9a7cd9d10e9272f3f2ac7a";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ dataspeed-pds-msgs python-qt-binding rospy rqt-gui rqt-gui-py ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''ROS rqt GUI for the Dataspeed Inc. Intelligent Power Distribution System (iPDS)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

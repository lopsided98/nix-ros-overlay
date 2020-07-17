
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dataspeed-pds-msgs, python-qt-binding, python3Packages, rospy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-noetic-dataspeed-pds-rqt";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_pds-release/archive/release/noetic/dataspeed_pds_rqt/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "ae6f0ce9ca65ad851a6536101d44c739c94d07f9454acaa5915b35a093ef49db";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dataspeed-pds-msgs python-qt-binding rospy rqt-gui rqt-gui-py ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''ROS rqt GUI for the Dataspeed Inc. Power Distribution System (PDS)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

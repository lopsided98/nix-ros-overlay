
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dataspeed-pds-msgs, python-qt-binding, pythonPackages, rospy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-melodic-dataspeed-pds-rqt";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_pds-release/archive/release/melodic/dataspeed_pds_rqt/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "7b3e6f7fcab659357456ae8c6c770878fe14ac8f59c9c8f04ee3412e33405ba4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dataspeed-pds-msgs python-qt-binding rospy rqt-gui rqt-gui-py ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''ROS rqt GUI for the Dataspeed Inc. Power Distribution System (PDS)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

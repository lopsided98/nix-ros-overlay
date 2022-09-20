
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dataspeed-pds-msgs, python-qt-binding, pythonPackages, rospy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-melodic-dataspeed-pds-rqt";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_pds-release/archive/release/melodic/dataspeed_pds_rqt/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "45e42d4c5a45175fd962ada3e558210b104c34af8c6214bec8ad26230be40a40";
  };

  buildType = "catkin";
  buildInputs = [ catkin pythonPackages.setuptools ];
  propagatedBuildInputs = [ dataspeed-pds-msgs python-qt-binding rospy rqt-gui rqt-gui-py ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''ROS rqt GUI for the Dataspeed Inc. Intelligent Power Distribution System (iPDS)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

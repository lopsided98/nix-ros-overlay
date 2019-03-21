
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, rqt-gui, catkin, dataspeed-pds-msgs, rospy, python-qt-binding }:
buildRosPackage {
  pname = "ros-melodic-dataspeed-pds-rqt";
  version = "1.0.2";

  src = fetchurl {
    url = https://github.com/DataspeedInc-release/dataspeed_pds-release/archive/release/melodic/dataspeed_pds_rqt/1.0.2-0.tar.gz;
    sha256 = "e88f4d791492e0e2966a559a4af4e2b676ce72d2710220ee67c939da43e5d186";
  };

  propagatedBuildInputs = [ rqt-gui-py dataspeed-pds-msgs rospy rqt-gui python-qt-binding ];
  nativeBuildInputs = [ rqt-gui-py dataspeed-pds-msgs rospy catkin rqt-gui python-qt-binding ];

  meta = {
    description = ''ROS rqt GUI for the Dataspeed Inc. Power Distribution System (PDS)'';
    #license = lib.licenses.BSD;
  };
}

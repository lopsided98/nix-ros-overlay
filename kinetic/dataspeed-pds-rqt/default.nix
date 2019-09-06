
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, rqt-gui, catkin, dataspeed-pds-msgs, rospy, python-qt-binding }:
buildRosPackage {
  pname = "ros-kinetic-dataspeed-pds-rqt";
  version = "1.0.2";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_pds-release/archive/release/kinetic/dataspeed_pds_rqt/1.0.2-0.tar.gz";
    name = "1.0.2-0.tar.gz";
    sha256 = "a5ef7da715d3d63496b5bb1ae163c8577efbd479b002c6b94a349e8b67ae0e6e";
  };

  buildType = "catkin";
  buildInputs = [ rqt-gui-py rqt-gui dataspeed-pds-msgs rospy python-qt-binding ];
  propagatedBuildInputs = [ rqt-gui-py rqt-gui dataspeed-pds-msgs rospy python-qt-binding ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS rqt GUI for the Dataspeed Inc. Power Distribution System (PDS)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

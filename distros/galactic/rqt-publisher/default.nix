
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python-qt-binding, python3Packages, qt-gui-py-common, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-galactic-rqt-publisher";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_publisher-release/archive/release/galactic/rqt_publisher/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "6708b051edc075b0ccffcf6868a59eee4047075e45197a6b0c7ed2f4c79304f2";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python-qt-binding python3Packages.catkin-pkg qt-gui-py-common rqt-gui rqt-gui-py rqt-py-common ];

  meta = {
    description = ''rqt_publisher provides a GUI plugin for publishing arbitrary messages with fixed or computed field values.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

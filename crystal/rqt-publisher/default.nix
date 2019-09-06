
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, ament-cmake, python-qt-binding, rqt-gui, python3Packages, rqt-py-common, qt-gui-py-common }:
buildRosPackage {
  pname = "ros-crystal-rqt-publisher";
  version = "1.0.3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_publisher-release/archive/release/crystal/rqt_publisher/1.0.3-0.tar.gz";
    name = "1.0.3-0.tar.gz";
    sha256 = "8d6b4cc21b3b3a1a0e1394eba2afd3921d28af0482c12af5e466d0a2080d22f7";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rqt-gui-py python3Packages.catkin-pkg python-qt-binding rqt-gui rqt-py-common qt-gui-py-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''rqt_publisher provides a GUI plugin for publishing arbitrary messages with fixed or computed field values.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

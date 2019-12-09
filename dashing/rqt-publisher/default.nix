
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, python3Packages, rqt-py-common, qt-gui-py-common, ament-cmake, rqt-gui-py, python-qt-binding }:
buildRosPackage {
  pname = "ros-dashing-rqt-publisher";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_publisher-release/archive/release/dashing/rqt_publisher/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "767fd7764b6c0a748f8f07abedd6b1cbad7cbbc619f2bbdfa16c2434c356ed81";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rqt-gui rqt-py-common qt-gui-py-common rqt-gui-py python3Packages.catkin-pkg python-qt-binding ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''rqt_publisher provides a GUI plugin for publishing arbitrary messages with fixed or computed field values.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

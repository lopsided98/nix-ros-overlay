
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, ament-cmake, python-qt-binding, rqt-gui, python3Packages, rqt-py-common, qt-gui-py-common }:
buildRosPackage {
  pname = "ros-dashing-rqt-publisher";
  version = "1.0.5-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/rqt_publisher-release/archive/release/dashing/rqt_publisher/1.0.5-1.tar.gz;
    sha256 = "44bbe110761427edf504d5386ade2cbe10e347b2853c6be4b2a9ac1c4da5ad29";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rqt-gui-py python3Packages.catkin-pkg python-qt-binding rqt-gui rqt-py-common qt-gui-py-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''rqt_publisher provides a GUI plugin for publishing arbitrary messages with fixed or computed field values.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

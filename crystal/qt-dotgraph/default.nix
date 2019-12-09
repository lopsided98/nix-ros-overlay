
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, ament-lint-common, ament-cmake, ament-lint-auto, ament-cmake-pytest, python-qt-binding }:
buildRosPackage {
  pname = "ros-crystal-qt-dotgraph";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/qt_gui_core-release/archive/release/crystal/qt_dotgraph/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "f67cf44c9975de2788be0dce6898d2c7924516ae4e74f1354c94adceb3ed6d23";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common python3Packages.pygraphviz ament-cmake-pytest ];
  propagatedBuildInputs = [ python3Packages.pydot python-qt-binding ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''qt_dotgraph provides helpers to work with dot graphs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

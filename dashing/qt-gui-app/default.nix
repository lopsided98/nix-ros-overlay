
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-common, ament-cmake, qt-gui, ament-index-python, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-qt-gui-app";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/qt_gui_core-release/archive/release/dashing/qt_gui_app/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "6dd19686823d2f5a2bbf36fead928fa02ba2b8384ef53db35cf97231311ceae0";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-common ament-lint-auto ];
  propagatedBuildInputs = [ qt-gui ament-index-python ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''qt_gui_app provides the main to start an instance of the integrated graphical user interface provided by qt_gui.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

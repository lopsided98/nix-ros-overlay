
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, qt-gui, ament-index-python, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-qt-gui-app";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/qt_gui_core-release/archive/release/dashing/qt_gui_app/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "431b085ae46d569927da0e8397d79d91b8c1d66ab0bb400c73e82aa7a77ec5b4";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python qt-gui ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''qt_gui_app provides the main to start an instance of the integrated graphical user interface provided by qt_gui.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

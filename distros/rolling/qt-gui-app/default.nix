
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-python, ament-lint-auto, ament-lint-common, qt-gui }:
buildRosPackage {
  pname = "ros-rolling-qt-gui-app";
  version = "2.7.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/qt_gui_core-release/archive/release/rolling/qt_gui_app/2.7.2-2.tar.gz";
    name = "2.7.2-2.tar.gz";
    sha256 = "7580c09547dec1e043ffb130bb857d55e349e3d90074acd187b5c2ff878c1723";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python qt-gui ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''qt_gui_app provides the main to start an instance of the integrated graphical user interface provided by qt_gui.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

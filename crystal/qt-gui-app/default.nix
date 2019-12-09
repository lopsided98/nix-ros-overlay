
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-common, ament-cmake, qt-gui, ament-index-python, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-qt-gui-app";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/qt_gui_core-release/archive/release/crystal/qt_gui_app/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "292e714d858f8ba41b540fda47fdc3d726dc90dbcb7a915efa979c34f8a0d54e";
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

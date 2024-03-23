
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, python-qt-binding, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-qt-dotgraph";
  version = "2.7.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/qt_gui_core-release/archive/release/rolling/qt_dotgraph/2.7.2-2.tar.gz";
    name = "2.7.2-2.tar.gz";
    sha256 = "d543dc8b5adfeb5254f4c186c5e7960c3344ec4396e1e0d1caaffbd20c67de16";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common python3Packages.pygraphviz ];
  propagatedBuildInputs = [ python-qt-binding python3Packages.pydot ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "qt_dotgraph provides helpers to work with dot graphs.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

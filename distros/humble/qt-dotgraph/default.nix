
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, python-qt-binding, python3Packages }:
buildRosPackage {
  pname = "ros-humble-qt-dotgraph";
  version = "2.2.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/qt_gui_core-release/archive/release/humble/qt_dotgraph/2.2.3-2.tar.gz";
    name = "2.2.3-2.tar.gz";
    sha256 = "99eafd3af2158dc40eb80fa03e5498ff7526bb5b4169c26f5cb8a10ce4c47694";
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

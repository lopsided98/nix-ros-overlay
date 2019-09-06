
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, ament-index-python, ament-lint-auto, python-qt-binding }:
buildRosPackage {
  pname = "ros-dashing-qt-gui-py-common";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/qt_gui_core-release/archive/release/dashing/qt_gui_py_common/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "400db9ac943a29cbfb49bb7a68f39ca43212e0795066b0e3c48b8857f39679dc";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python python-qt-binding ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''qt_gui_py_common provides common functionality for GUI plugins written in Python.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

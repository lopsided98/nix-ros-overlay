
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, ament-lint-common, qt-gui, rqt-gui }:
buildRosPackage {
  pname = "ros-rolling-rqt-gui-py";
  version = "1.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/rolling/rqt_gui_py/1.7.2-1.tar.gz";
    name = "1.7.2-1.tar.gz";
    sha256 = "763ab94f2d675e68f453df609d265012eee6a0f6975df96bd196bb9aad190562";
  };

  buildType = "ament_python";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ qt-gui rqt-gui ];

  meta = {
    description = "rqt_gui_py enables GUI plugins to use the Python client library for ROS.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

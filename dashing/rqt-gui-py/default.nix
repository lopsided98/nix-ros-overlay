
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, rqt-gui, qt-gui, ament-lint-common }:
buildRosPackage {
  pname = "ros-dashing-rqt-gui-py";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/dashing/rqt_gui_py/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "eedd5df15675862c403d67921c7c056cc5835331a6b77fdbe20ab07c25b3cc0a";
  };

  buildType = "ament_python";
  buildInputs = [ rqt-gui qt-gui ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rqt-gui qt-gui ];

  meta = {
    description = ''rqt_gui_py enables GUI plugins to use the Python client library for ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

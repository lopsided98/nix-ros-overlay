
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, rqt-gui, rqt-gui-cpp, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-lyrical-rqt";
  version = "1.10.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/lyrical/rqt/1.10.6-1.tar.gz";
    name = "1.10.6-1.tar.gz";
    sha256 = "bc839be2521c5798d3a918114d6cb81827691e3be83a28cf84da40c8cd6b508d";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ rqt-gui rqt-gui-cpp rqt-gui-py rqt-py-common ];

  meta = {
    description = "rqt is a Qt-based framework for GUI development for ROS.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

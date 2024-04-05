
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pythonPackages, rqt-gui, rqt-gui-cpp, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-rolling-rqt";
  version = "1.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/rolling/rqt/1.6.0-1.tar.gz";
    name = "1.6.0-1.tar.gz";
    sha256 = "cf767418ee62faf72356f3b501b6e44f360d4c3a02127223d4fd544b9df6d4a1";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest ];
  propagatedBuildInputs = [ rqt-gui rqt-gui-cpp rqt-gui-py rqt-py-common ];

  meta = {
    description = "rqt is a Qt-based framework for GUI development for ROS.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

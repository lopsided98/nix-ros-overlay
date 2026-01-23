
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, rqt-gui, rqt-gui-cpp, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-jazzy-rqt";
  version = "1.6.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/jazzy/rqt/1.6.3-1.tar.gz";
    name = "1.6.3-1.tar.gz";
    sha256 = "64678ceea1a573415231e9771e443a719bbb8d6b17337825f3aa926317f9cd8c";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ rqt-gui rqt-gui-cpp rqt-gui-py rqt-py-common ];

  meta = {
    description = "rqt is a Qt-based framework for GUI development for ROS.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pythonPackages, rqt-gui, rqt-gui-cpp, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-rolling-rqt";
  version = "1.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/rolling/rqt/1.7.2-1.tar.gz";
    name = "1.7.2-1.tar.gz";
    sha256 = "c86206c4c35b0d55970ff2297b8d32ff426a181ddfb828c4b9da7adc61573018";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest ];
  propagatedBuildInputs = [ rqt-gui rqt-gui-cpp rqt-gui-py rqt-py-common ];

  meta = {
    description = "rqt is a Qt-based framework for GUI development for ROS.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, rqt-gui, rqt-gui-cpp, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-kilted-rqt";
  version = "1.9.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/kilted/rqt/1.9.3-1.tar.gz";
    name = "1.9.3-1.tar.gz";
    sha256 = "31cb28253ea01ee41fb2b04c378055743918c87886e2ffd8aa79412d81b5a93b";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ rqt-gui rqt-gui-cpp rqt-gui-py rqt-py-common ];

  meta = {
    description = "rqt is a Qt-based framework for GUI development for ROS.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, rqt-gui, rqt-gui-cpp, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-rolling-rqt";
  version = "2.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/rolling/rqt/2.0.4-1.tar.gz";
    name = "2.0.4-1.tar.gz";
    sha256 = "78e05ee4bb0f02944975f8747f150451755c9169d2c4a6b2dc98a79e772301b1";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ rqt-gui rqt-gui-cpp rqt-gui-py rqt-py-common ];

  meta = {
    description = "rqt is a Qt-based framework for GUI development for ROS.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

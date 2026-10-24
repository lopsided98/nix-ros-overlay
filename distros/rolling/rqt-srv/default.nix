
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-xmllint, python3Packages, qt-gui, rqt-gui, rqt-gui-py, rqt-msg, rqt-py-common }:
buildRosPackage {
  pname = "ros-rolling-rqt-srv";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_srv-release/archive/release/rolling/rqt_srv/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "fe40c39b472558716e96db3adc1944327d978e86a355deb6a68dfb4c3dcc2883";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ qt-gui rqt-gui rqt-gui-py rqt-msg rqt-py-common ];

  meta = {
    description = "A Python GUI plugin for introspecting available ROS service types.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

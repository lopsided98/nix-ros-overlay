
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-xmllint, pythonPackages, rqt-gui, rqt-gui-py, rqt-msg }:
buildRosPackage {
  pname = "ros-rolling-rqt-srv";
  version = "1.2.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_srv-release/archive/release/rolling/rqt_srv/1.2.2-2.tar.gz";
    name = "1.2.2-2.tar.gz";
    sha256 = "f1387fd1c52203d57bbe5bcd9f4ca344f36373ea28efa22effe44140fc4d6305";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ rqt-gui rqt-gui-py rqt-msg ];

  meta = {
    description = ''A Python GUI plugin for introspecting available ROS service types.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

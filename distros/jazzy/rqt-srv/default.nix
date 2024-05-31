
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-xmllint, pythonPackages, rqt-gui, rqt-gui-py, rqt-msg }:
buildRosPackage {
  pname = "ros-jazzy-rqt-srv";
  version = "1.2.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_srv-release/archive/release/jazzy/rqt_srv/1.2.2-3.tar.gz";
    name = "1.2.2-3.tar.gz";
    sha256 = "bc51533f47785628b05b070a0aedf01bb3f1a43bd0a0135ad6221a9cfcd4e91e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ rqt-gui rqt-gui-py rqt-msg ];

  meta = {
    description = "A Python GUI plugin for introspecting available ROS service types.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

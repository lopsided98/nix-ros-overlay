
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-xmllint, pythonPackages, rqt-gui, rqt-gui-py, rqt-msg }:
buildRosPackage {
  pname = "ros-rolling-rqt-srv";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_srv-release/archive/release/rolling/rqt_srv/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "e100358e82bc5f3d6d5c74f08720c48330546fbb545aad6253471f506055e8fc";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ rqt-gui rqt-gui-py rqt-msg ];

  meta = {
    description = ''A Python GUI plugin for introspecting available ROS service types.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

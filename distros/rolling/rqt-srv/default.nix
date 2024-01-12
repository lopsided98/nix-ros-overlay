
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-xmllint, rqt-gui, rqt-gui-py, rqt-msg }:
buildRosPackage {
  pname = "ros-rolling-rqt-srv";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_srv-release/archive/release/rolling/rqt_srv/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "878fe4e1ef812f8f2239e0dae597e209da17210bafed8f5fe8efede2a3a1f7d4";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-xmllint ];
  propagatedBuildInputs = [ rqt-gui rqt-gui-py rqt-msg ];

  meta = {
    description = ''A Python GUI plugin for introspecting available ROS service types.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

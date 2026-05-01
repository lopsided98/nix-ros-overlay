
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-xmllint, python3Packages, rqt-gui, rqt-gui-py, rqt-msg }:
buildRosPackage {
  pname = "ros-lyrical-rqt-srv";
  version = "1.4.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_srv-release/archive/release/lyrical/rqt_srv/1.4.1-3.tar.gz";
    name = "1.4.1-3.tar.gz";
    sha256 = "e8a532caf7163ec8be7b6423fe33af399610989773bc4421226acd063ee9e168";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ rqt-gui rqt-gui-py rqt-msg ];

  meta = {
    description = "A Python GUI plugin for introspecting available ROS service types.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

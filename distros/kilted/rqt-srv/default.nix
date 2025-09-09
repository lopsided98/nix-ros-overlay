
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-xmllint, python3Packages, rqt-gui, rqt-gui-py, rqt-msg }:
buildRosPackage {
  pname = "ros-kilted-rqt-srv";
  version = "1.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_srv-release/archive/release/kilted/rqt_srv/1.3.0-2.tar.gz";
    name = "1.3.0-2.tar.gz";
    sha256 = "0ab8147d49a22b349da74a8a4515fe8fa00918af02de1d4332a893093f850916";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ rqt-gui rqt-gui-py rqt-msg ];

  meta = {
    description = "A Python GUI plugin for introspecting available ROS service types.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-xmllint, python3Packages, rqt-gui, rqt-gui-py, rqt-msg }:
buildRosPackage {
  pname = "ros-jazzy-rqt-srv";
  version = "1.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_srv-release/archive/release/jazzy/rqt_srv/1.2.3-1.tar.gz";
    name = "1.2.3-1.tar.gz";
    sha256 = "cef589009a921dc7473c2985e0e71b4729f793df6002103665eb89af31c33e5e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ rqt-gui rqt-gui-py rqt-msg ];

  meta = {
    description = "A Python GUI plugin for introspecting available ROS service types.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

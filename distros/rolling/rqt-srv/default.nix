
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-xmllint, python3Packages, rqt-gui, rqt-gui-py, rqt-msg }:
buildRosPackage {
  pname = "ros-rolling-rqt-srv";
  version = "1.4.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_srv-release/archive/release/rolling/rqt_srv/1.4.1-2.tar.gz";
    name = "1.4.1-2.tar.gz";
    sha256 = "e8c5f2d58486785f423d1748da9ac861e52b5924dcba902f90bc1220ddd5dc22";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ rqt-gui rqt-gui-py rqt-msg ];

  meta = {
    description = "A Python GUI plugin for introspecting available ROS service types.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, rqt-gui-cpp, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-rolling-rqt";
  version = "1.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/rolling/rqt/1.5.0-2.tar.gz";
    name = "1.5.0-2.tar.gz";
    sha256 = "c64160ff1c4c54c36cab8d6e06a3ff7b2b397c4d9bc672eb56e68bb9e266bdcf";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ rqt-gui rqt-gui-cpp rqt-gui-py rqt-py-common ];

  meta = {
    description = ''rqt is a Qt-based framework for GUI development for ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

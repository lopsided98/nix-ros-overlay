
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, rqt-gui-cpp, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-rolling-rqt";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/rolling/rqt/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "32e497a60b5cd0528713d616d4d04b0491d056ed6c51ef504e5e0fc7878e4b22";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ rqt-gui rqt-gui-cpp rqt-gui-py rqt-py-common ];

  meta = {
    description = ''rqt is a Qt-based framework for GUI development for ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, rqt-gui-cpp, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-rolling-rqt";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/rolling/rqt/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "e2a8a08cdc674d6426d60aa34a89a31029d5baa3f771bf8c4ee78ad0f7153a9d";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ rqt-gui rqt-gui-cpp rqt-gui-py rqt-py-common ];

  meta = {
    description = ''rqt is a Qt-based framework for GUI development for ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

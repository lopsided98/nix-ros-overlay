
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, rqt-gui-cpp, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-rolling-rqt";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/rolling/rqt/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "4f71bf59a1ede6602e9ccf27ea0e785424b0e71ba27fbba38dfeb0f6f389c47d";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ rqt-gui rqt-gui-cpp rqt-gui-py rqt-py-common ];

  meta = {
    description = ''rqt is a Qt-based framework for GUI development for ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

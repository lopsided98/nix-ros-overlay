
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-xmllint, rqt-gui, rqt-gui-py, rqt-msg, rqt-py-common }:
buildRosPackage {
  pname = "ros-rolling-rqt-action";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_action-release/archive/release/rolling/rqt_action/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "c149dac232d41631981890f0f58661528867005a9c923b625b3394047448bb04";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-xmllint ];
  propagatedBuildInputs = [ rqt-gui rqt-gui-py rqt-msg rqt-py-common ];

  meta = {
    description = ''rqt_action provides a feature to introspect all available ROS action types.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

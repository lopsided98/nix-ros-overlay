
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-xmllint, rqt-gui, rqt-gui-py, rqt-msg, rqt-py-common }:
buildRosPackage {
  pname = "ros-rolling-rqt-action";
  version = "2.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_action-release/archive/release/rolling/rqt_action/2.2.0-2.tar.gz";
    name = "2.2.0-2.tar.gz";
    sha256 = "7771f6651e02ba7267c884e92508d002fff9c2365e70f38bfdd5ff6facfd8948";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-xmllint ];
  propagatedBuildInputs = [ rqt-gui rqt-gui-py rqt-msg rqt-py-common ];

  meta = {
    description = ''rqt_action provides a feature to introspect all available ROS action types.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-xmllint, rqt-gui, rqt-gui-py, rqt-msg, rqt-py-common }:
buildRosPackage {
  pname = "ros-jazzy-rqt-action";
  version = "2.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_action-release/archive/release/jazzy/rqt_action/2.2.0-3.tar.gz";
    name = "2.2.0-3.tar.gz";
    sha256 = "b73df5379f5f13edfc1d78ff3990e7a132d0a1341dfd96776da0fc464a252803";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-xmllint ];
  propagatedBuildInputs = [ rqt-gui rqt-gui-py rqt-msg rqt-py-common ];

  meta = {
    description = "rqt_action provides a feature to introspect all available ROS action types.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

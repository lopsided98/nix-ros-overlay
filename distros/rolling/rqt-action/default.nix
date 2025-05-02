
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-xmllint, rqt-gui, rqt-gui-py, rqt-msg, rqt-py-common }:
buildRosPackage {
  pname = "ros-rolling-rqt-action";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_action-release/archive/release/rolling/rqt_action/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "f9842bde58b9da475060502621e8801b3f15e319d89afe86184e4d6410b5386c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-xmllint ];
  propagatedBuildInputs = [ rqt-gui rqt-gui-py rqt-msg rqt-py-common ];

  meta = {
    description = "rqt_action provides a feature to introspect all available ROS action types.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

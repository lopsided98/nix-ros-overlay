
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-xmllint, rqt-gui, rqt-gui-py, rqt-msg, rqt-py-common }:
buildRosPackage {
  pname = "ros-rolling-rqt-action";
  version = "2.4.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_action-release/archive/release/rolling/rqt_action/2.4.1-2.tar.gz";
    name = "2.4.1-2.tar.gz";
    sha256 = "2ebc50774189850c1ec1f173095acf090f83a8145b7cdaf921556d68cbe6c90d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-xmllint ];
  propagatedBuildInputs = [ rqt-gui rqt-gui-py rqt-msg rqt-py-common ];

  meta = {
    description = "rqt_action provides a feature to introspect all available ROS action types.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

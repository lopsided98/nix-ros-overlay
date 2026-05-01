
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-xmllint, rqt-gui, rqt-gui-py, rqt-msg, rqt-py-common }:
buildRosPackage {
  pname = "ros-lyrical-rqt-action";
  version = "2.4.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_action-release/archive/release/lyrical/rqt_action/2.4.1-3.tar.gz";
    name = "2.4.1-3.tar.gz";
    sha256 = "c819e0040fedda16cc6cb5aac4e696dd11fabd0b73c25b207392b49b70bde434";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-xmllint ];
  propagatedBuildInputs = [ rqt-gui rqt-gui-py rqt-msg rqt-py-common ];

  meta = {
    description = "rqt_action provides a feature to introspect all available ROS action types.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

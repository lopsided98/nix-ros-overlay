
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-xmllint, rqt-gui, rqt-gui-py, rqt-msg, rqt-py-common }:
buildRosPackage {
  pname = "ros-jazzy-rqt-action";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_action-release/archive/release/jazzy/rqt_action/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "515f6e8a9a2446e240a78a9d7ca24f40c1d1e1bc0719575a0d23a481b1b3c9f7";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-xmllint ];
  propagatedBuildInputs = [ rqt-gui rqt-gui-py rqt-msg rqt-py-common ];

  meta = {
    description = "rqt_action provides a feature to introspect all available ROS action types.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

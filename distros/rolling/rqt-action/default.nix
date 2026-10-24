
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-xmllint, python3Packages, qt-gui, rqt-gui, rqt-gui-py, rqt-msg, rqt-py-common }:
buildRosPackage {
  pname = "ros-rolling-rqt-action";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_action-release/archive/release/rolling/rqt_action/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "7151f61179164a0d02242c0f2255d40d1c2a13cede053a082d6e5f5570db3e14";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ qt-gui rqt-gui rqt-gui-py rqt-msg rqt-py-common ];

  meta = {
    description = "rqt_action provides a feature to introspect all available ROS action types.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

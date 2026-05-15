
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-xmllint, rqt-gui, rqt-gui-py, rqt-msg, rqt-py-common }:
buildRosPackage {
  pname = "ros-lyrical-rqt-action";
  version = "2.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_action-release/archive/release/lyrical/rqt_action/2.5.0-1.tar.gz";
    name = "2.5.0-1.tar.gz";
    sha256 = "7e79d525cb500f62c85b8fd43445a5d2260f7b5a70dfb0297d364300aed0edcc";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-xmllint ];
  propagatedBuildInputs = [ rqt-gui rqt-gui-py rqt-msg rqt-py-common ];

  meta = {
    description = "rqt_action provides a feature to introspect all available ROS action types.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-xmllint, rqt-gui, rqt-gui-py, rqt-msg, rqt-py-common }:
buildRosPackage {
  pname = "ros-iron-rqt-action";
  version = "2.1.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_action-release/archive/release/iron/rqt_action/2.1.2-3.tar.gz";
    name = "2.1.2-3.tar.gz";
    sha256 = "cc3207373f13cb692b5bd1b9703490f130a91cc97d212015dd882e640da5644b";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-xmllint ];
  propagatedBuildInputs = [ rqt-gui rqt-gui-py rqt-msg rqt-py-common ];

  meta = {
    description = ''rqt_action provides a feature to introspect all available ROS action types.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

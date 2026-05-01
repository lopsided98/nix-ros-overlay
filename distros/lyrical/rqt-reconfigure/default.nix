
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-xmllint, python-qt-binding, python3Packages, qt-gui-py-common, rclpy, rqt-console, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-lyrical-rqt-reconfigure";
  version = "1.8.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_reconfigure-release/archive/release/lyrical/rqt_reconfigure/1.8.4-3.tar.gz";
    name = "1.8.4-3.tar.gz";
    sha256 = "049783afab777463f37c89423686052267c6e38af84bf7bfbd075ce9a77cdff5";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python python-qt-binding python3Packages.pyyaml qt-gui-py-common rclpy rqt-console rqt-gui rqt-gui-py rqt-py-common ];

  meta = {
    description = "This rqt plugin provides a way to view and edit parameters on nodes.";
    license = with lib.licenses; [ bsdOriginal asl20 ];
  };
}

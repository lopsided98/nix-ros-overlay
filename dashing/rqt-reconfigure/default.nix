
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, python3Packages, ament-copyright, qt-gui-py-common, rqt-py-common, rqt-console, ament-flake8, ament-xmllint, rqt-gui-py, rclpy, ament-index-python, python-qt-binding }:
buildRosPackage {
  pname = "ros-dashing-rqt-reconfigure";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_reconfigure-release/archive/release/dashing/rqt_reconfigure/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "d80e45536bbb564a3c5246056446beccff64770183b1801243fc20f3ffe07616";
  };

  buildType = "ament_python";
  checkInputs = [ ament-xmllint ament-flake8 ament-copyright ];
  propagatedBuildInputs = [ python3Packages.pyyaml rqt-gui qt-gui-py-common rqt-py-common rqt-console rqt-gui-py rclpy ament-index-python python-qt-binding ];

  meta = {
    description = ''This rqt plugin provides a way to view and edit parameters on nodes.'';
    license = with lib.licenses; [ bsdOriginal asl20 ];
  };
}


# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, python-qt-binding, python3Packages, qt-gui-py-common, rclpy, rqt-gui, rqt-gui-py, rqt-py-common, std-srvs }:
buildRosPackage {
  pname = "ros-foxy-oroca-rqt-command";
  version = "0.6.0-r3";

  src = fetchurl {
    url = "https://github.com/oroca-release/oroca_rqt_command-release/archive/release/foxy/oroca_rqt_command/0.6.0-3.tar.gz";
    name = "0.6.0-3.tar.gz";
    sha256 = "7d67ed103dcacb1276741c2fc154962bc0aa72a87f9c96ef18aa9cc5a8a46672";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs python-qt-binding python3Packages.catkin-pkg qt-gui-py-common rclpy rqt-gui rqt-gui-py rqt-py-common std-srvs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS 2 example for RQt plugin'';
    license = with lib.licenses; [ asl20 ];
  };
}

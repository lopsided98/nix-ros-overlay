
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, marti-introspection-msgs, python3Packages, rcl-interfaces, rclpy, ros2cli }:
buildRosPackage {
  pname = "ros-rolling-swri-cli-tools";
  version = "3.6.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/rolling/swri_cli_tools/3.6.1-2.tar.gz";
    name = "3.6.1-2.tar.gz";
    sha256 = "85a022eda8640c37b40f7ea81a89f482edc1e7a82e143dffde680882c3bedaf1";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint ];
  propagatedBuildInputs = [ marti-introspection-msgs python3Packages.natsort rcl-interfaces rclpy ros2cli ];

  meta = {
    description = "Command line tools for introspecting ROS systems";
    license = with lib.licenses; [ bsd3 ];
  };
}

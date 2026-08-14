
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, python3Packages, rclpy, yasmin, yasmin-factory }:
buildRosPackage {
  pname = "ros-humble-yasmin-plugins-manager";
  version = "6.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/humble/yasmin_plugins_manager/6.1.1-1.tar.gz";
    name = "6.1.1-1.tar.gz";
    sha256 = "52b1f848073fa99bf136009b76e935ccba060cb97a5bb62ef9db3512316d81f9";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ament-index-python python3Packages.lxml rclpy yasmin yasmin-factory ];

  meta = {
    description = "Plugin discovery and caching for YASMIN states.";
    license = with lib.licenses; [ asl20 ];
  };
}

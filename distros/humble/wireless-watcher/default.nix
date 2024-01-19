
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, rclpy, wireless-msgs, wirelesstools }:
buildRosPackage {
  pname = "ros-humble-wireless-watcher";
  version = "1.0.1-r2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/wireless-release/archive/release/humble/wireless_watcher/1.0.1-2.tar.gz";
    name = "1.0.1-2.tar.gz";
    sha256 = "b6a676b9466668ae678049eb476411ca1bac2a7d3b888e9541c7eb319d5b1d4e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ rclpy wireless-msgs wirelesstools ];

  meta = {
    description = ''A Python-based node which publishes connection information about a linux wireless interface.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, rclpy, wireless-msgs, wirelesstools }:
buildRosPackage {
  pname = "ros-foxy-wireless-watcher";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/wireless-release/archive/release/foxy/wireless_watcher/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "0e0a76028b133b65ed851053a89815dc4466894e42820525700b44646f426987";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ rclpy wireless-msgs wirelesstools ];

  meta = {
    description = ''A Python-based node which publishes connection information about a linux wireless interface.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

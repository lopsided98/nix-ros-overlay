
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, nav-msgs, python3Packages, rclpy, tf-transformations, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-nav2-loopback-sim";
  version = "1.3.7-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/jazzy/nav2_loopback_sim/1.3.7-1.tar.gz";
    name = "1.3.7-1.tar.gz";
    sha256 = "52f6cd7cc8a309786b8c3df774212f2e28318c3984494dbc1d63247d630db93a";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs python3Packages.transforms3d rclpy tf-transformations tf2-ros ];

  meta = {
    description = "A loopback simulator to replace physics simulation";
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, nav-msgs, python3Packages, rclpy, tf-transformations, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-nav2-loopback-sim";
  version = "1.3.6-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/jazzy/nav2_loopback_sim/1.3.6-1.tar.gz";
    name = "1.3.6-1.tar.gz";
    sha256 = "9e7ac2ae93c63763594205a779ac12fbf459df70faf36183f991b429123943de";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs rclpy tf-transformations tf2-ros ];

  meta = {
    description = "A loopback simulator to replace physics simulation";
    license = with lib.licenses; [ asl20 ];
  };
}

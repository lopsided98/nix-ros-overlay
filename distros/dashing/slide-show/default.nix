
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, cv-bridge, python3Packages, pythonPackages, rcl-interfaces, rclpy, sensor-msgs }:
buildRosPackage {
  pname = "ros-dashing-slide-show";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/slide_show-release/archive/release/dashing/slide_show/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "aca5bee82b21f0a30b43c0b409ff7a45808bd3ce211024b6acc8bff0f01b5b5e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ cv-bridge python3Packages.opencv3 rcl-interfaces rclpy sensor-msgs ];

  meta = {
    description = ''Publishes images from the file system.'';
    license = with lib.licenses; [ asl20 ];
  };
}

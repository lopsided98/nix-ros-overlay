
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, cv-bridge, python3Packages, pythonPackages, rcl-interfaces, rclpy, sensor-msgs }:
buildRosPackage {
  pname = "ros-eloquent-slide-show";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/slide_show-release/archive/release/eloquent/slide_show/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "efe7159897ece049a91bd1962d2a2ec7d3b17cb94d3aa6d8b4f4a03a482a689c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ cv-bridge python3Packages.opencv3 rcl-interfaces rclpy sensor-msgs ];

  meta = {
    description = ''Publishes images from the file system.'';
    license = with lib.licenses; [ asl20 ];
  };
}

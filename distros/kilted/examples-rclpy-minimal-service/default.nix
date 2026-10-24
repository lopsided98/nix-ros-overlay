
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, example-interfaces, python3Packages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-examples-rclpy-minimal-service";
  version = "0.20.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/kilted/examples_rclpy_minimal_service/0.20.7-1.tar.gz";
    name = "0.20.7-1.tar.gz";
    sha256 = "456d6a971f3a8fdd23309a969f21ed0057bd9f15ed42a5107159937214c45e8f";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ example-interfaces rclpy std-msgs ];

  meta = {
    description = "Examples of minimal service servers using rclpy.";
    license = with lib.licenses; [ asl20 ];
  };
}

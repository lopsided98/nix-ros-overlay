
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, example-interfaces, python3Packages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-examples-rclpy-minimal-service";
  version = "0.19.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/jazzy/examples_rclpy_minimal_service/0.19.6-1.tar.gz";
    name = "0.19.6-1.tar.gz";
    sha256 = "4f12f72b5b66594496c931accb2979dc06733b5efdfe8a9d41e160033a2e0109";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ example-interfaces rclpy std-msgs ];

  meta = {
    description = "Examples of minimal service servers using rclpy.";
    license = with lib.licenses; [ asl20 ];
  };
}

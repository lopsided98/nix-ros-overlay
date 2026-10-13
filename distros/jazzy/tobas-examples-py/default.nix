
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, rclpy, tobas-msgs }:
buildRosPackage {
  pname = "ros-jazzy-tobas-examples-py";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_examples_py/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "075e720630c149fa8e9883a0f3bccc68553ba44f8f3b88a3595143136ea88555";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ rclpy tobas-msgs ];

  meta = {
    description = "Package containing example user scripts.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}

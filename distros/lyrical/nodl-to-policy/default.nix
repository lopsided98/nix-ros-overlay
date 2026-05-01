
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-lint-auto, ament-mypy, ament-pep257, ament-pycodestyle, nodl-python, python3Packages, ros-testing, ros2cli, ros2nodl, ros2run, sros2, test-msgs }:
buildRosPackage {
  pname = "ros-lyrical-nodl-to-policy";
  version = "1.0.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nodl_to_policy-release/archive/release/lyrical/nodl_to_policy/1.0.0-6.tar.gz";
    name = "1.0.0-6.tar.gz";
    sha256 = "577670c7e979438d7e06345ec101fe55754a29a474e3d34282f4cc6ef3cc1861";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-lint-auto ament-mypy ament-pep257 ament-pycodestyle python3Packages.pytest python3Packages.pytest-mock ros-testing test-msgs ];
  propagatedBuildInputs = [ nodl-python python3Packages.argcomplete python3Packages.lxml ros2cli ros2nodl ros2run sros2 ];

  meta = {
    description = "Package to generate a ROS 2 Access Control Policy from the NoDL description of a ROS system";
    license = with lib.licenses; [ asl20 ];
  };
}

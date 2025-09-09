
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-lint-auto, ament-mypy, ament-pep257, ament-pycodestyle, nodl-python, python3Packages, ros-testing, ros2cli, ros2nodl, ros2run, sros2, test-msgs }:
buildRosPackage {
  pname = "ros-kilted-nodl-to-policy";
  version = "1.0.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nodl_to_policy-release/archive/release/kilted/nodl_to_policy/1.0.0-5.tar.gz";
    name = "1.0.0-5.tar.gz";
    sha256 = "4f69f5529e6c5b9ad4fc8c191e2123a03932dbb9a67a510b44d1dc7a229eb998";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-lint-auto ament-mypy ament-pep257 ament-pycodestyle python3Packages.pytest python3Packages.pytest-mock ros-testing test-msgs ];
  propagatedBuildInputs = [ nodl-python python3Packages.argcomplete python3Packages.lxml ros2cli ros2nodl ros2run sros2 ];

  meta = {
    description = "Package to generate a ROS 2 Access Control Policy from the NoDL description of a ROS system";
    license = with lib.licenses; [ asl20 ];
  };
}

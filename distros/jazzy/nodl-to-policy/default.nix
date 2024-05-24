
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-lint-auto, ament-mypy, ament-pep257, ament-pycodestyle, nodl-python, python3Packages, pythonPackages, ros-testing, ros2cli, ros2nodl, ros2run, sros2, test-msgs }:
buildRosPackage {
  pname = "ros-jazzy-nodl-to-policy";
  version = "1.0.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nodl_to_policy-release/archive/release/jazzy/nodl_to_policy/1.0.0-5.tar.gz";
    name = "1.0.0-5.tar.gz";
    sha256 = "43cef6a9fa281528e61a0f9114ed6de1f346cc3fad86f197e91e3f88b43fcd58";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-lint-auto ament-mypy ament-pep257 ament-pycodestyle python3Packages.pytest-mock pythonPackages.pytest ros-testing test-msgs ];
  propagatedBuildInputs = [ nodl-python python3Packages.argcomplete python3Packages.lxml ros2cli ros2nodl ros2run sros2 ];

  meta = {
    description = "Package to generate a ROS 2 Access Control Policy from the NoDL description of a ROS system";
    license = with lib.licenses; [ asl20 ];
  };
}

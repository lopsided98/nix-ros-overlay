
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-lint-auto, ament-mypy, ament-pep257, ament-pycodestyle, nodl-python, python3Packages, pythonPackages, ros-testing, ros2cli, ros2nodl, ros2run, sros2, test-msgs }:
buildRosPackage {
  pname = "ros-rolling-nodl-to-policy";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nodl_to_policy-release/archive/release/rolling/nodl_to_policy/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "f7b37c75966366663ef843e1593782fee11d5162878c282405ef8e450f5ccd16";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-lint-auto ament-mypy ament-pep257 ament-pycodestyle python3Packages.pytest-mock pythonPackages.pytest ros-testing test-msgs ];
  propagatedBuildInputs = [ nodl-python python3Packages.argcomplete python3Packages.lxml ros2cli ros2nodl ros2run sros2 ];

  meta = {
    description = ''Package to generate a ROS 2 Access Control Policy from the NoDL description of a ROS system'';
    license = with lib.licenses; [ asl20 ];
  };
}

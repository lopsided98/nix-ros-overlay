
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-index-python, ament-pep257, launch, pythonPackages }:
buildRosPackage {
  pname = "ros-crystal-launch-testing";
  version = "0.7.4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/crystal/launch_testing/0.7.4-0.tar.gz";
    name = "0.7.4-0.tar.gz";
    sha256 = "f2e76510b9b46a57150d902ba813ec46f8f9032e2d0152091bbddc7c37c0d959";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-pep257 launch pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python launch ];

  meta = {
    description = ''Helper scripts for tests that use the ROS launch tool.'';
    license = with lib.licenses; [ asl20 ];
  };
}

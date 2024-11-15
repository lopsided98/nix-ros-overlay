
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, scenario-execution }:
buildRosPackage {
  pname = "ros-jazzy-scenario-execution-os";
  version = "1.2.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/jazzy/scenario_execution_os/1.2.0-5.tar.gz";
    name = "1.2.0-5.tar.gz";
    sha256 = "6bfb2d71b57d1f6d9b2fbc9660a3bb0bb8b895a597b2151499bef5e1f92e5305";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ scenario-execution ];

  meta = {
    description = "Scenario Execution library for OS interactions";
    license = with lib.licenses; [ asl20 ];
  };
}

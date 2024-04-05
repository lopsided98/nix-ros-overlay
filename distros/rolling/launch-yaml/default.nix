
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, launch, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-launch-yaml";
  version = "3.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/rolling/launch_yaml/3.4.1-1.tar.gz";
    name = "3.4.1-1.tar.gz";
    sha256 = "8a0d1f4713cc54c8676b6d5bd6d885583015907e8c50fe2718157f83e29d53a9";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ launch ];

  meta = {
    description = "YAML frontend for the launch package.";
    license = with lib.licenses; [ asl20 ];
  };
}

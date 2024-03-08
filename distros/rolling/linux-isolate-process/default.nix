
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-linux-isolate-process";
  version = "0.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/linux_isolate_process-release/archive/release/rolling/linux_isolate_process/0.0.2-2.tar.gz";
    name = "0.0.2-2.tar.gz";
    sha256 = "23b2bd13d6fce38fd9b4c86fff450a295aa5a9e69873b99bd3834e56c70667e2";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];

  meta = {
    description = ''A tool to isolate ros2 nodes'';
    license = with lib.licenses; [ asl20 ];
  };
}

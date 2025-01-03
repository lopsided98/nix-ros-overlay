
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-linux-isolate-process";
  version = "0.0.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/linux_isolate_process-release/archive/release/jazzy/linux_isolate_process/0.0.2-3.tar.gz";
    name = "0.0.2-3.tar.gz";
    sha256 = "8104fc958ea214118f678fe3f876dd60eb9c99299e780915f7abc815cc40d6c0";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];

  meta = {
    description = "A tool to isolate ros2 nodes";
    license = with lib.licenses; [ asl20 ];
  };
}

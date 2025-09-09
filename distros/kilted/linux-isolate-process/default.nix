
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-linux-isolate-process";
  version = "0.0.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/linux_isolate_process-release/archive/release/kilted/linux_isolate_process/0.0.2-3.tar.gz";
    name = "0.0.2-3.tar.gz";
    sha256 = "1e7f9b6b43109676bb9d97cacf8f389827eb246370a144629e79243c5e9376f6";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];

  meta = {
    description = "A tool to isolate ros2 nodes";
    license = with lib.licenses; [ asl20 ];
  };
}

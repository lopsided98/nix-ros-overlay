
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-linux-isolate-process";
  version = "0.0.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/linux_isolate_process-release/archive/release/lyrical/linux_isolate_process/0.0.2-4.tar.gz";
    name = "0.0.2-4.tar.gz";
    sha256 = "009d85c5c7aeec377a0b1f8fd0ad14e4319c9452b2f74b2da08f06f51b47c2fb";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];

  meta = {
    description = "A tool to isolate ros2 nodes";
    license = with lib.licenses; [ asl20 ];
  };
}

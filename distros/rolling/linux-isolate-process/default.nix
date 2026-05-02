
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-linux-isolate-process";
  version = "0.0.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/linux_isolate_process-release/archive/release/rolling/linux_isolate_process/0.0.2-3.tar.gz";
    name = "0.0.2-3.tar.gz";
    sha256 = "489af8acf4e0e6552f87cd2d0cc1f11c9814ad0de2f19939a632fab9cda29a0e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];

  meta = {
    description = "A tool to isolate ros2 nodes";
    license = with lib.licenses; [ asl20 ];
  };
}

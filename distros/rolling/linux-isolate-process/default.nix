
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-linux-isolate-process";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/linux_isolate_process-release/archive/release/rolling/linux_isolate_process/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "2b401a73f03adb6b148f25cc1ba680469645ec8b919fa7320d16a87c6238957d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];

  meta = {
    description = ''A tool to isolate ros2 nodes'';
    license = with lib.licenses; [ asl20 ];
  };
}

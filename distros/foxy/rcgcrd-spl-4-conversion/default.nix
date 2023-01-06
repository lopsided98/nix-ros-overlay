
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, pythonPackages, rcgcrd-spl-4 }:
buildRosPackage {
  pname = "ros-foxy-rcgcrd-spl-4-conversion";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gc_spl-release/archive/release/foxy/rcgcrd_spl_4_conversion/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "b0b528744b54bf9aa53ce17f70f00cc2e11e7e0b8b355fb032ad52f75fcf9275";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.construct rcgcrd-spl-4 ];

  meta = {
    description = ''Converts RoboCup SPL GameController Return Data V4 between ROS msg and UDP raw bytes'';
    license = with lib.licenses; [ asl20 ];
  };
}

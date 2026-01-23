
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages }:
buildRosPackage {
  pname = "ros-humble-ament-index-python";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_index-release/archive/release/humble/ament_index_python/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "9a6caf54d115ce5d24a8b6e6dcbb715ca66fa2b564bada6c70e6e3d32bdcecd7";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];

  meta = {
    description = "Python API to access the ament resource index.";
    license = with lib.licenses; [ asl20 ];
  };
}

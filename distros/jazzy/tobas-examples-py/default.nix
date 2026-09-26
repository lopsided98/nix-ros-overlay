
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl,  }:
buildRosPackage {
  pname = "ros-jazzy-tobas-examples-py";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_examples_py/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "3c4c7a7c04d18301411d97273c43283f5f68cb25347d2701c2aba200f90505cb";
  };

  buildType = "ament_python";

  meta = {
    description = "Package containing example user scripts.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}

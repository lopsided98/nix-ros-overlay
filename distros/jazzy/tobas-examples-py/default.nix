
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl,  }:
buildRosPackage {
  pname = "ros-jazzy-tobas-examples-py";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_examples_py/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "146f43931ad9cfeeea0789a900f7bf8636e8b807ebfacc7c0840929a1ed0ed59";
  };

  buildType = "ament_python";

  meta = {
    description = "Package containing example user scripts.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}

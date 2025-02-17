
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, automatika-ros-sugar, kompass-interfaces, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-kompass";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kompass-release/archive/release/jazzy/kompass/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "fe34969f5603b8d2c46fe3a8fcdf3d5f14870dcc73af1f109b8f0bb1b78439b8";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ automatika-ros-sugar kompass-interfaces python3Packages.pykdl ];

  meta = {
    description = "Kompass: Event-driven navigation system";
    license = with lib.licenses; [ mit ];
  };
}

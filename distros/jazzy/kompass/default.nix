
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, automatika-ros-sugar, kompass-interfaces, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-kompass";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kompass-release/archive/release/jazzy/kompass/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "2f6d6ebc588a044e4b5c73bc6eba84568ac54fb3259c9fffa78c5d93cd8150b3";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ automatika-ros-sugar kompass-interfaces python3Packages.pykdl ];

  meta = {
    description = "Kompass: Event-driven navigation system";
    license = with lib.licenses; [ mit ];
  };
}

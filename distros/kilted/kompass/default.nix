
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, automatika-ros-sugar, kompass-interfaces, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-kompass";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kompass-release/archive/release/kilted/kompass/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "67fa8deab78c5da01928b9b38ae9deab8260b560e005487f1969ef5ed9a46871";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ automatika-ros-sugar kompass-interfaces python3Packages.pykdl ];

  meta = {
    description = "Kompass: Event-driven navigation system";
    license = with lib.licenses; [ mit ];
  };
}

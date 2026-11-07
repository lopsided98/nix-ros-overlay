
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, automatika-ros-sugar, kompass-interfaces, python3Packages, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-rolling-kompass";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kompass-release/archive/release/rolling/kompass/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "c3b07c41018e8a71d36ab784769b5f445447234c1c6b6132d5d3dd9b63f09db5";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ automatika-ros-sugar kompass-interfaces python3Packages.pykdl tf2-geometry-msgs ];

  meta = {
    description = "Kompass: Event-driven navigation system";
    license = with lib.licenses; [ mit ];
  };
}


# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, automatika-ros-sugar, kompass-interfaces, python3Packages, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-kilted-kompass";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kompass-release/archive/release/kilted/kompass/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "ff42d77eb15742a33df0bdeb64c4868a6dded1154e9c873e9fa6a74c319ec4b9";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ automatika-ros-sugar kompass-interfaces python3Packages.pykdl tf2-geometry-msgs ];

  meta = {
    description = "Kompass: Event-driven navigation system";
    license = with lib.licenses; [ mit ];
  };
}

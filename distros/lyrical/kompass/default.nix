
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, automatika-ros-sugar, kompass-interfaces, python3Packages, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-lyrical-kompass";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kompass-release/archive/release/lyrical/kompass/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "43327475484da17838a0dbfd9c57bd95ec0c6bd49413019df75fdfe96359ee92";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ automatika-ros-sugar kompass-interfaces python3Packages.pykdl tf2-geometry-msgs ];

  meta = {
    description = "Kompass: Event-driven navigation system";
    license = with lib.licenses; [ mit ];
  };
}

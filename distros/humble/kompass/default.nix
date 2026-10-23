
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, automatika-ros-sugar, kompass-interfaces, python3Packages, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-humble-kompass";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kompass-release/archive/release/humble/kompass/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "c5de6482eade703b2f238243e66a33680c99cf57e37be97476ddb70d78b58cad";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ automatika-ros-sugar kompass-interfaces python3Packages.pykdl tf2-geometry-msgs ];

  meta = {
    description = "Kompass: Event-driven navigation system";
    license = with lib.licenses; [ mit ];
  };
}

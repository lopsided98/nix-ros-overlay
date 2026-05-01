
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, automatika-ros-sugar, kompass-interfaces, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-kompass";
  version = "0.4.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kompass-release/archive/release/lyrical/kompass/0.4.1-3.tar.gz";
    name = "0.4.1-3.tar.gz";
    sha256 = "31bdbec8b9b20f7d28e09a6fec6c8c6daa4a3a25c1f2ba7aea6d66006c9c673f";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ automatika-ros-sugar kompass-interfaces python3Packages.pykdl ];

  meta = {
    description = "Kompass: Event-driven navigation system";
    license = with lib.licenses; [ mit ];
  };
}

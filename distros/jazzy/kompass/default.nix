
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, automatika-ros-sugar, kompass-interfaces, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-kompass";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kompass-release/archive/release/jazzy/kompass/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "f41c0381450593c917f9230aca31a2cca50c1bc15cf7dc5dcb92a1864f7f8aa2";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ automatika-ros-sugar kompass-interfaces python3Packages.pykdl ];

  meta = {
    description = "Kompass: Event-driven navigation system";
    license = with lib.licenses; [ mit ];
  };
}

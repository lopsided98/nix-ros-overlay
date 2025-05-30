
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, automatika-ros-sugar, kompass-interfaces, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-kompass";
  version = "0.2.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kompass-release/archive/release/kilted/kompass/0.2.1-2.tar.gz";
    name = "0.2.1-2.tar.gz";
    sha256 = "42f3194dbcac2e4f5bef698e28c5cd04ea5657311631dd8c20db414cea05458f";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ automatika-ros-sugar kompass-interfaces python3Packages.pykdl ];

  meta = {
    description = "Kompass: Event-driven navigation system";
    license = with lib.licenses; [ mit ];
  };
}

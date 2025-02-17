
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, automatika-ros-sugar, kompass-interfaces, python3Packages }:
buildRosPackage {
  pname = "ros-humble-kompass";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kompass-release/archive/release/humble/kompass/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "ae52e6593599bc54f72a1b3bce4f8dfead2b9c7b17586d145d818c1a1ffa06f4";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ automatika-ros-sugar kompass-interfaces python3Packages.pykdl ];

  meta = {
    description = "Kompass: Event-driven navigation system";
    license = with lib.licenses; [ mit ];
  };
}


# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, automatika-ros-sugar, kompass-interfaces, python3Packages }:
buildRosPackage {
  pname = "ros-humble-kompass";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kompass-release/archive/release/humble/kompass/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "19081d6c336f9ca601de8af8c70b5f1b20a0598195b2889dedd32e061d9ae199";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ automatika-ros-sugar kompass-interfaces python3Packages.pykdl ];

  meta = {
    description = "Kompass: Event-driven navigation system";
    license = with lib.licenses; [ mit ];
  };
}

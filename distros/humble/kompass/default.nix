
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, automatika-ros-sugar, kompass-interfaces, python3Packages }:
buildRosPackage {
  pname = "ros-humble-kompass";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kompass-release/archive/release/humble/kompass/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "5b17753c65bf8da1bda67383b643fc130ec97effa785b56640317c762aa226a9";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ automatika-ros-sugar kompass-interfaces python3Packages.pykdl ];

  meta = {
    description = "Kompass: Event-driven navigation system";
    license = with lib.licenses; [ mit ];
  };
}

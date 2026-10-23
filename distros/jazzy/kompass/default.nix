
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, automatika-ros-sugar, kompass-interfaces, python3Packages, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-jazzy-kompass";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kompass-release/archive/release/jazzy/kompass/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "63977bcdb04982bd77372668183d28ca98f6048585281985338fac7f209ea994";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ automatika-ros-sugar kompass-interfaces python3Packages.pykdl tf2-geometry-msgs ];

  meta = {
    description = "Kompass: Event-driven navigation system";
    license = with lib.licenses; [ mit ];
  };
}

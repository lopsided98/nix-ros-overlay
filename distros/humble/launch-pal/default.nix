
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch, launch-ros, python3Packages }:
buildRosPackage {
  pname = "ros-humble-launch-pal";
  version = "0.12.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/launch_pal-release/archive/release/humble/launch_pal/0.12.1-1.tar.gz";
    name = "0.12.1-1.tar.gz";
    sha256 = "1a526a9b237893000678d7f3b33051a2d0a041246a94b4a99cc4ce655eb0b9ed";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python launch launch-ros python3Packages.jinja2 python3Packages.pyyaml ];

  meta = {
    description = "Utilities for launch files";
    license = with lib.licenses; [ asl20 ];
  };
}

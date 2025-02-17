
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch, launch-ros, python3Packages }:
buildRosPackage {
  pname = "ros-humble-launch-pal";
  version = "0.10.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/launch_pal-release/archive/release/humble/launch_pal/0.10.0-1.tar.gz";
    name = "0.10.0-1.tar.gz";
    sha256 = "fa31b138956ef9411bb600087a500d992dbc55b8be9295ae86cb357b21a957e6";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python launch launch-ros python3Packages.jinja2 python3Packages.pyyaml ];

  meta = {
    description = "Utilities for launch files";
    license = with lib.licenses; [ asl20 ];
  };
}

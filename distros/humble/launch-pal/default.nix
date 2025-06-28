
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch, launch-ros, python3Packages }:
buildRosPackage {
  pname = "ros-humble-launch-pal";
  version = "0.14.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/launch_pal-release/archive/release/humble/launch_pal/0.14.1-1.tar.gz";
    name = "0.14.1-1.tar.gz";
    sha256 = "5568a6ce7a9e1d8b1d09a315dfa83c087769b4be82e0b250384d5c6ecbe5a434";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python launch launch-ros python3Packages.jinja2 python3Packages.pyyaml ];

  meta = {
    description = "Utilities for launch files";
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, launch, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-launch-xml";
  version = "3.9.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/rolling/launch_xml/3.9.1-1.tar.gz";
    name = "3.9.1-1.tar.gz";
    sha256 = "bf52ace6428bd9874faef2c2b53a9a0b67d5da3e6a1a8734d050ad5354c05390";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ launch ];

  meta = {
    description = "XML frontend for the launch package.";
    license = with lib.licenses; [ asl20 ];
  };
}

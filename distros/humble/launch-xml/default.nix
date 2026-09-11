
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, launch, python3Packages }:
buildRosPackage {
  pname = "ros-humble-launch-xml";
  version = "1.0.15-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/humble/launch_xml/1.0.15-1.tar.gz";
    name = "1.0.15-1.tar.gz";
    sha256 = "192ebaeb52f63ced5b0ba1b2c2d981e4a650dac3c9f6554f500619db96eb4ece";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ launch ];

  meta = {
    description = "XML frontend for the launch package.";
    license = with lib.licenses; [ asl20 ];
  };
}

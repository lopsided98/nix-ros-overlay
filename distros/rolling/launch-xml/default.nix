
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, launch, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-launch-xml";
  version = "3.10.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/rolling/launch_xml/3.10.3-1.tar.gz";
    name = "3.10.3-1.tar.gz";
    sha256 = "1c8f310e6a6b8bf1e45d6704c8a8e6571436dcf89573c8a4561035de54798d82";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ launch ];

  meta = {
    description = "XML frontend for the launch package.";
    license = with lib.licenses; [ asl20 ];
  };
}

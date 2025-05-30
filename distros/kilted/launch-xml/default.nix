
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, launch, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-launch-xml";
  version = "3.8.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/kilted/launch_xml/3.8.1-2.tar.gz";
    name = "3.8.1-2.tar.gz";
    sha256 = "8e2e0c88a28e2b2f21513b461b84173d04e905c8cca844dfe3f97d2bfcf5323c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ launch ];

  meta = {
    description = "XML frontend for the launch package.";
    license = with lib.licenses; [ asl20 ];
  };
}

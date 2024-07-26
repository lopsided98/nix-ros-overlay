
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, launch, pythonPackages }:
buildRosPackage {
  pname = "ros-iron-launch-xml";
  version = "2.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/iron/launch_xml/2.0.4-1.tar.gz";
    name = "2.0.4-1.tar.gz";
    sha256 = "cccbe3db720bb85b53d4c2b4a8c6259fbbba06e444a4e367800239d9f42797bc";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ launch ];

  meta = {
    description = "XML frontend for the launch package.";
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, launch, pythonPackages }:
buildRosPackage {
  pname = "ros-humble-launch-xml";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/humble/launch_xml/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "da99ffd975c7b35e27190d8f752f6e3cc85b01da709766cc1b714f699de0a916";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ launch ];

  meta = {
    description = "XML frontend for the launch package.";
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, launch, python3Packages }:
buildRosPackage {
  pname = "ros-humble-launch-xml";
  version = "1.0.16-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/humble/launch_xml/1.0.16-1.tar.gz";
    name = "1.0.16-1.tar.gz";
    sha256 = "29bb81264b3ccbb7c7538c65145eae5a2e2f01f47ec10be5c67ef26b21540c8b";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ launch ];

  meta = {
    description = "XML frontend for the launch package.";
    license = with lib.licenses; [ asl20 ];
  };
}

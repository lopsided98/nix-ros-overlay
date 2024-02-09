
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, launch, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-launch-xml";
  version = "3.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/rolling/launch_xml/3.4.0-1.tar.gz";
    name = "3.4.0-1.tar.gz";
    sha256 = "dc5b1635d806fcb3d6114493e42d2e9deea8c39c99179dc18e3a24d8e239505e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ launch ];

  meta = {
    description = ''XML frontend for the launch package.'';
    license = with lib.licenses; [ asl20 ];
  };
}

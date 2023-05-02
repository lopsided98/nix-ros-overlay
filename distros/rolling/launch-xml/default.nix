
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, launch, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-launch-xml";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/rolling/launch_xml/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "ebf38ac59c6ceae881e18933548f30c67c1120d22210ddd99bacf6a199d7fdd8";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ launch ];

  meta = {
    description = ''XML frontend for the launch package.'';
    license = with lib.licenses; [ asl20 ];
  };
}

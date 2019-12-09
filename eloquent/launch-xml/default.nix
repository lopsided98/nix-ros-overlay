
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, launch, pythonPackages, ament-pep257, ament-flake8 }:
buildRosPackage {
  pname = "ros-eloquent-launch-xml";
  version = "0.9.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/eloquent/launch_xml/0.9.5-1.tar.gz";
    name = "0.9.5-1.tar.gz";
    sha256 = "b0ea48c11ba3c5c1f3345bb5fa0c4fd4f7546878f32ac25f1a9bc453f932c272";
  };

  buildType = "ament_python";
  buildInputs = [ launch ];
  checkInputs = [ pythonPackages.pytest ament-flake8 ament-copyright ament-pep257 ];
  propagatedBuildInputs = [ launch ];

  meta = {
    description = ''XML frontend for the launch package.'';
    license = with lib.licenses; [ asl20 ];
  };
}

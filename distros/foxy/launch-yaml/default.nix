
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, launch, pythonPackages }:
buildRosPackage {
  pname = "ros-foxy-launch-yaml";
  version = "0.10.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/foxy/launch_yaml/0.10.9-1.tar.gz";
    name = "0.10.9-1.tar.gz";
    sha256 = "155acd73b35236b5da30236fc6c58bddf55498c92c42b53c1cb085f3cd4ead2b";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ launch ];

  meta = {
    description = ''YAML frontend for the launch package.'';
    license = with lib.licenses; [ asl20 ];
  };
}

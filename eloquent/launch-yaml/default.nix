
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, launch, pythonPackages, ament-pep257, ament-flake8 }:
buildRosPackage {
  pname = "ros-eloquent-launch-yaml";
  version = "0.9.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/eloquent/launch_yaml/0.9.5-1.tar.gz";
    name = "0.9.5-1.tar.gz";
    sha256 = "87fc07415c7da6d92331041540eebce0eeae3779815b399ed91c630ed6f88210";
  };

  buildType = "ament_python";
  buildInputs = [ launch ];
  checkInputs = [ pythonPackages.pytest ament-flake8 ament-copyright ament-pep257 ];
  propagatedBuildInputs = [ launch ];

  meta = {
    description = ''YAML frontend for the launch package.'';
    license = with lib.licenses; [ asl20 ];
  };
}

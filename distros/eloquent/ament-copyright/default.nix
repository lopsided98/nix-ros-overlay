
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-lint, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-eloquent-ament-copyright";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/eloquent/ament_copyright/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "a87706b7e5271fed53c765bac9a64ebb1b0a5e0fb3d982f0ea0ddf421f40c228";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-lint ];

  meta = {
    description = ''The ability to check source files for copyright and license
    information.'';
    license = with lib.licenses; [ asl20 ];
  };
}

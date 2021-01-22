
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-lint, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-dashing-ament-copyright";
  version = "0.7.12-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/dashing/ament_copyright/0.7.12-1.tar.gz";
    name = "0.7.12-1.tar.gz";
    sha256 = "f76dc03c16ad0fc489f4afc285dd4aaff16ae546829e1f9473b30af5e676dddf";
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

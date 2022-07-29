
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-lint, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-foxy-ament-copyright";
  version = "0.9.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/foxy/ament_copyright/0.9.7-1.tar.gz";
    name = "0.9.7-1.tar.gz";
    sha256 = "ef6f59b55470967d4cd72bbbfb74aa807f9414ecab08aa9c6ea81c96fcb99988";
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

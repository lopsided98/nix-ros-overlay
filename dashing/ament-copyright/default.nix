
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pythonPackages, ament-lint, ament-flake8, ament-pep257 }:
buildRosPackage {
  pname = "ros-dashing-ament-copyright";
  version = "0.7.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/dashing/ament_copyright/0.7.10-1.tar.gz";
    name = "0.7.10-1.tar.gz";
    sha256 = "038eceaf781020c7a8b326ebc3850e275a1ed94f5e7fcc8dfb39bf29fca4e678";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 pythonPackages.pytest ament-pep257 ];
  propagatedBuildInputs = [ ament-lint ];

  meta = {
    description = ''The ability to check source files for copyright and license
    information.'';
    license = with lib.licenses; [ asl20 ];
  };
}

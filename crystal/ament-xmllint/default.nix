
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, pythonPackages, libxml2, ament-pep257, ament-flake8 }:
buildRosPackage {
  pname = "ros-crystal-ament-xmllint";
  version = "0.6.4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/crystal/ament_xmllint/0.6.4-0.tar.gz";
    name = "0.6.4-0.tar.gz";
    sha256 = "e6f9065ffb8db0a928a3c8a4215baa085723a20628839d39274e359ec4bd3650";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest ament-flake8 ament-copyright ament-pep257 ];
  propagatedBuildInputs = [ libxml2 ];

  meta = {
    description = ''The ability to check XML files like the package manifest using xmllint
    and generate xUnit test result files.'';
    license = with lib.licenses; [ asl20 ];
  };
}

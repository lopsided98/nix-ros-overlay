
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-lint, ament-pep257, libxml2, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-ament-xmllint";
  version = "0.19.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_xmllint/0.19.2-1.tar.gz";
    name = "0.19.2-1.tar.gz";
    sha256 = "9f2bc9634b43b55c74d4bdac03bb8e7cf3ff1a08a50e95c842e4eb0380a5d3d7";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ ament-lint libxml2 ];

  meta = {
    description = "The ability to check XML files like the package manifest using xmllint
    and generate xUnit test result files.";
    license = with lib.licenses; [ asl20 ];
  };
}

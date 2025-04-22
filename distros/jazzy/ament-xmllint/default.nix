
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-lint, ament-pep257, libxml2, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-ament-xmllint";
  version = "0.17.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/jazzy/ament_xmllint/0.17.2-1.tar.gz";
    name = "0.17.2-1.tar.gz";
    sha256 = "6369b1cb4b651e1dc204139cbc075b05618cf6fc1d7b83e623d7b9075d9e368f";
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

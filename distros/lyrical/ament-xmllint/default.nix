
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-lint, ament-pep257, libxml2, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-ament-xmllint";
  version = "0.20.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/lyrical/ament_xmllint/0.20.7-1.tar.gz";
    name = "0.20.7-1.tar.gz";
    sha256 = "00c29863f4c89318e294eb4beba09276a07eb044056df2129b5783d9a6949bbd";
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

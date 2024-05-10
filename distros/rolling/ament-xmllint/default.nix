
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-lint, ament-pep257, libxml2, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-ament-xmllint";
  version = "0.18.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_xmllint/0.18.0-1.tar.gz";
    name = "0.18.0-1.tar.gz";
    sha256 = "f70cdff2689100103010c31edb07fa5988ca23fd7371739aaed1355c73d26abf";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-lint libxml2 ];

  meta = {
    description = "The ability to check XML files like the package manifest using xmllint
    and generate xUnit test result files.";
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-lint, ament-pep257, libxml2, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-ament-xmllint";
  version = "0.20.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_xmllint/0.20.4-1.tar.gz";
    name = "0.20.4-1.tar.gz";
    sha256 = "2c2b022327445a79b52cb8c1c898b7093aedc1d21ff4b805794850fde3bd3c89";
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

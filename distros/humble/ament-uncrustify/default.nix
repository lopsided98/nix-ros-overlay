
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-pycodestyle, python3Packages, uncrustify-vendor }:
buildRosPackage {
  pname = "ros-humble-ament-uncrustify";
  version = "0.12.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/humble/ament_uncrustify/0.12.11-1.tar.gz";
    name = "0.12.11-1.tar.gz";
    sha256 = "db2355ca53a298a6cfbdd7e0d92003cbb7e25db2f3ad9e8ee52cd7ee27b177a4";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-pycodestyle python3Packages.pytest ];
  propagatedBuildInputs = [ uncrustify-vendor ];

  meta = {
    description = "The ability to check code against style conventions using uncrustify
    and generate xUnit test result files.";
    license = with lib.licenses; [ asl20 ];
  };
}

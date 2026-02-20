
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-pycodestyle, python3Packages, uncrustify-vendor }:
buildRosPackage {
  pname = "ros-humble-ament-uncrustify";
  version = "0.12.15-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/humble/ament_uncrustify/0.12.15-1.tar.gz";
    name = "0.12.15-1.tar.gz";
    sha256 = "261e6e28c4acbc2ad4d6e58df295f12f1327fb3f5e378e582e7d75b2325f63fa";
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


# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, clang, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-ament-clang-format";
  version = "0.17.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/jazzy/ament_clang_format/0.17.4-1.tar.gz";
    name = "0.17.4-1.tar.gz";
    sha256 = "cbe486f1beaad4d9024fde9c9c748f9fdc50e4edddb09bb434b335a747767268";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ clang python3Packages.pyyaml ];

  meta = {
    description = "The ability to check code against style conventions using
    clang-format and generate xUnit test result files.";
    license = with lib.licenses; [ asl20 ];
  };
}

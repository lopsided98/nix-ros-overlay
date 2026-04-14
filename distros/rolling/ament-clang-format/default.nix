
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, clang, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-ament-clang-format";
  version = "0.20.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_clang_format/0.20.4-1.tar.gz";
    name = "0.20.4-1.tar.gz";
    sha256 = "6af128fe9a74c45ba6697041dfcdb3733db8f0dda308e6ef7b2b657e7fa878b7";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ clang python3Packages.pyyaml ];

  meta = {
    description = "The ability to check code against style conventions using
    clang-format and generate xUnit test result files.";
    license = with lib.licenses; [ asl20 ];
  };
}

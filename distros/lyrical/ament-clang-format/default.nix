
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, clang, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-ament-clang-format";
  version = "0.20.5-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/lyrical/ament_clang_format/0.20.5-4.tar.gz";
    name = "0.20.5-4.tar.gz";
    sha256 = "f6482d96cd35421ba22e843718215116bb5d2e466dbb8a3a62e25e28d5f4211e";
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

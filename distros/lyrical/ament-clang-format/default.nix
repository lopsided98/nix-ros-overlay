
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, clang, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-ament-clang-format";
  version = "0.20.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/lyrical/ament_clang_format/0.20.6-1.tar.gz";
    name = "0.20.6-1.tar.gz";
    sha256 = "dfdbb417fa1c387355f1dd71b47dc14beb108cbb3f4b72cd1efcaddf719cb6ae";
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

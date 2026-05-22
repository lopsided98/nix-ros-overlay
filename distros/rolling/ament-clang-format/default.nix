
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, clang, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-ament-clang-format";
  version = "0.21.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_clang_format/0.21.1-1.tar.gz";
    name = "0.21.1-1.tar.gz";
    sha256 = "a56d6bc7869fba9eac5bb3a5098cd23b10a16022f566dd5244ef4a0ff55597dc";
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

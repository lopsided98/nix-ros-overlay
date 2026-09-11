
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, clang, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-ament-clang-tidy";
  version = "0.21.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_clang_tidy/0.21.2-1.tar.gz";
    name = "0.21.2-1.tar.gz";
    sha256 = "8c463cfe0d413f0f1c3f4a3d51609791f262253ea2540cd40db3a6b8c458004f";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ clang python3Packages.pyyaml ];

  meta = {
    description = "The ability to check code against style conventions using
    clang-tidy and generate xUnit test result files.";
    license = with lib.licenses; [ asl20 ];
  };
}

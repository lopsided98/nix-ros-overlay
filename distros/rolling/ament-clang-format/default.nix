
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, clang, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-ament-clang-format";
  version = "0.14.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_clang_format/0.14.0-1.tar.gz";
    name = "0.14.0-1.tar.gz";
    sha256 = "3e79a3d88b13e8d0b037931b964d4e058594e7c6fac2390bd90188934ebd9295";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ clang python3Packages.pyyaml ];

  meta = {
    description = ''The ability to check code against style conventions using
    clang-format and generate xUnit test result files.'';
    license = with lib.licenses; [ asl20 ];
  };
}

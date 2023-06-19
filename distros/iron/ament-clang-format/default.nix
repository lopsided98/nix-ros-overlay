
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, clang, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-iron-ament-clang-format";
  version = "0.14.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/iron/ament_clang_format/0.14.1-2.tar.gz";
    name = "0.14.1-2.tar.gz";
    sha256 = "d272fa64859383a964484be541c2a06415339d52bb78b798f5336dacaea07f0d";
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

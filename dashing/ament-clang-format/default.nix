
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, clang, ament-flake8, pythonPackages, ament-pep257, python3Packages, ament-copyright }:
buildRosPackage {
  pname = "ros-dashing-ament-clang-format";
  version = "0.7.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/dashing/ament_clang_format/0.7.10-1.tar.gz";
    name = "0.7.10-1.tar.gz";
    sha256 = "52b4284b67572e251b9f415d7aa2d4406ebd078e78f7ec5779b3cb8e771f3ae2";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-copyright pythonPackages.pytest ament-pep257 ];
  propagatedBuildInputs = [ python3Packages.pyyaml clang ];

  meta = {
    description = ''The ability to check code against style conventions using
    clang-format and generate xUnit test result files.'';
    license = with lib.licenses; [ asl20 ];
  };
}

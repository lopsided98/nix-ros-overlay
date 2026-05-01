
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, clang, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-ament-clang-tidy";
  version = "0.20.5-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/lyrical/ament_clang_tidy/0.20.5-4.tar.gz";
    name = "0.20.5-4.tar.gz";
    sha256 = "44e482366c94de7ab0fe928c3430a60c60dba2fe526febf94e5cba282249832e";
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

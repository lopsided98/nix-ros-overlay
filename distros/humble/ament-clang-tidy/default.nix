
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, clang, python3Packages }:
buildRosPackage {
  pname = "ros-humble-ament-clang-tidy";
  version = "0.12.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/humble/ament_clang_tidy/0.12.11-1.tar.gz";
    name = "0.12.11-1.tar.gz";
    sha256 = "17cbb8345747f81989428fcd8faa28fa5c95238b9e615cbfdc423c67c3f9a601";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ clang python3Packages.pyyaml ];

  meta = {
    description = "The ability to check code against style conventions using
    clang-tidy and generate xUnit test result files.";
    license = with lib.licenses; [ asl20 ];
  };
}

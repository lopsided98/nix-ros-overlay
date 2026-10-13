
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-lint, ament-pep257, ament-xmllint, clang, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-ament-clang-tidy";
  version = "0.20.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/lyrical/ament_clang_tidy/0.20.7-1.tar.gz";
    name = "0.20.7-1.tar.gz";
    sha256 = "850108427c54b4159251673a73afbed302c4b5caced96cd0f3727bf4ce9d07de";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ ament-lint clang python3Packages.pyyaml ];

  meta = {
    description = "The ability to check code against style conventions using
    clang-tidy and generate xUnit test result files.";
    license = with lib.licenses; [ asl20 ];
  };
}

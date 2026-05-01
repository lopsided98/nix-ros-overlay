
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-ament-cpplint";
  version = "0.20.5-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/lyrical/ament_cpplint/0.20.5-4.tar.gz";
    name = "0.20.5-4.tar.gz";
    sha256 = "d5f975c3ac2760378e95d32cfe5df33188fbe17636c77cd42865ec75f533c5f1";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];

  meta = {
    description = "The ability to check code against the Google style conventions using
    cpplint and generate xUnit test result files.";
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}

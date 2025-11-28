
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-pycodestyle, ament-xmllint, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-ament-pyflakes";
  version = "0.20.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_pyflakes/0.20.3-1.tar.gz";
    name = "0.20.3-1.tar.gz";
    sha256 = "976e3cb7a902c297d3816fcc4ec645287af579d9c92b6d97a99373cec97bc9c9";
  };

  buildType = "ament_python";
  checkInputs = [ ament-pycodestyle ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.pyflakes ];

  meta = {
    description = "The ability to check code using pyflakes and generate xUnit test
    result files.";
    license = with lib.licenses; [ asl20 ];
  };
}

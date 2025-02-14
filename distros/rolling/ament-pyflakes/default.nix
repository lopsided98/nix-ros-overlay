
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-pycodestyle, ament-xmllint, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-ament-pyflakes";
  version = "0.19.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_pyflakes/0.19.1-1.tar.gz";
    name = "0.19.1-1.tar.gz";
    sha256 = "27df630b66c0cff3872fc40ecfaa1b4c8200a53f05e958773224a79f4a64361c";
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

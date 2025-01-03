
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-pycodestyle, python3Packages }:
buildRosPackage {
  pname = "ros-humble-ament-pyflakes";
  version = "0.12.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/humble/ament_pyflakes/0.12.11-1.tar.gz";
    name = "0.12.11-1.tar.gz";
    sha256 = "78d2486edaaa5c9deff1c82e9aac8bf5137a65393a6d4101ed704239a1951d8b";
  };

  buildType = "ament_python";
  checkInputs = [ ament-pycodestyle python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.pyflakes ];

  meta = {
    description = "The ability to check code using pyflakes and generate xUnit test
    result files.";
    license = with lib.licenses; [ asl20 ];
  };
}

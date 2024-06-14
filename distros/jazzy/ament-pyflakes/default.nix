
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-pycodestyle, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-jazzy-ament-pyflakes";
  version = "0.17.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/jazzy/ament_pyflakes/0.17.0-2.tar.gz";
    name = "0.17.0-2.tar.gz";
    sha256 = "95c99891676052e3701d0756cbbe2cd4dd1644b657b44656f2e3b55da1a29b4b";
  };

  buildType = "ament_python";
  checkInputs = [ ament-pycodestyle pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.pyflakes ];

  meta = {
    description = "The ability to check code using pyflakes and generate xUnit test
    result files.";
    license = with lib.licenses; [ asl20 ];
  };
}

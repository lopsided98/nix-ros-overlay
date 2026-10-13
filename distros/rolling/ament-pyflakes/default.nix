
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-pycodestyle, ament-xmllint, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-ament-pyflakes";
  version = "0.21.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_pyflakes/0.21.3-1.tar.gz";
    name = "0.21.3-1.tar.gz";
    sha256 = "98e87d7afb769f771b691686ca11d538bec812e1a0f9cf16154162dd855f9497";
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

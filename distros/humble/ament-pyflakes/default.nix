
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-pycodestyle, python3Packages }:
buildRosPackage {
  pname = "ros-humble-ament-pyflakes";
  version = "0.12.14-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/humble/ament_pyflakes/0.12.14-1.tar.gz";
    name = "0.12.14-1.tar.gz";
    sha256 = "29a6d7cbcdcfaaf5a10b194a5aebb8ae912634eb4a4768dd00b717ef6c556fe9";
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

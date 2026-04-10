
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-pycodestyle, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-ament-pyflakes";
  version = "0.17.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/jazzy/ament_pyflakes/0.17.5-1.tar.gz";
    name = "0.17.5-1.tar.gz";
    sha256 = "658ea539780b77de8ea7fc0ed90a9b758b750818170af3338360731e46f67718";
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

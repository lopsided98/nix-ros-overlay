
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-xmllint, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-ament-pycodestyle";
  version = "0.20.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_pycodestyle/0.20.0-1.tar.gz";
    name = "0.20.0-1.tar.gz";
    sha256 = "84666bfa5be7f53fb139bd054db9c38619826220b0c40cab4fb4e96d44195b10";
  };

  buildType = "ament_python";
  checkInputs = [ ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.pycodestyle ];

  meta = {
    description = "The ability to check code against the style conventions in PEP 8 and
    generate xUnit test result files.";
    license = with lib.licenses; [ asl20 ];
  };
}

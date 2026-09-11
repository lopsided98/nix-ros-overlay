
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-xmllint, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-ament-pycodestyle";
  version = "0.21.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_pycodestyle/0.21.2-1.tar.gz";
    name = "0.21.2-1.tar.gz";
    sha256 = "eec9778dbfb889c1fb4a2edbe44b62e2c32b7c5db9dcdf4a3c90851273bd3af1";
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

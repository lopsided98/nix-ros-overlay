
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-xmllint, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-ament-pycodestyle";
  version = "0.20.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_pycodestyle/0.20.4-1.tar.gz";
    name = "0.20.4-1.tar.gz";
    sha256 = "67f4fcd093023e92ab2145f2823dbfd1e0194f7b31e1fdff4250feb7d7cc601f";
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

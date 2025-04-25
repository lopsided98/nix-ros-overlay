
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-xmllint, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-ament-pycodestyle";
  version = "0.19.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_pycodestyle/0.19.2-1.tar.gz";
    name = "0.19.2-1.tar.gz";
    sha256 = "0c2cec301817d22e286e324234c5852f94331a1b8689aa1adde25518ea252411";
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

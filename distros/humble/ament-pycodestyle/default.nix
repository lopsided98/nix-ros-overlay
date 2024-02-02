
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-humble-ament-pycodestyle";
  version = "0.12.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/humble/ament_pycodestyle/0.12.10-1.tar.gz";
    name = "0.12.10-1.tar.gz";
    sha256 = "0ba183871c7e1d2cc591651212be215a633f5ef92f5c689bf54f39130edd1edf";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.pycodestyle ];

  meta = {
    description = ''The ability to check code against the style conventions in PEP 8 and
    generate xUnit test result files.'';
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-ament-cpplint";
  version = "0.13.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_cpplint/0.13.2-1.tar.gz";
    name = "0.13.2-1.tar.gz";
    sha256 = "bd5d0374ceff373cbc0f8e6b9064fd0f59ae0e3f87085d5c133f24e7fbf5253e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];

  meta = {
    description = ''The ability to check code against the Google style conventions using
    cpplint and generate xUnit test result files.'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}

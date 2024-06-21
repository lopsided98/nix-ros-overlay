
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-jazzy-ament-cpplint";
  version = "0.17.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/jazzy/ament_cpplint/0.17.0-2.tar.gz";
    name = "0.17.0-2.tar.gz";
    sha256 = "216f0d423ee6e2cc91af2a7712ecf348fcc9b2080741446050180d681ac81150";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];

  meta = {
    description = "The ability to check code against the Google style conventions using
    cpplint and generate xUnit test result files.";
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}

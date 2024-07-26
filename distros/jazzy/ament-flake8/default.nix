
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-ament-flake8";
  version = "0.17.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/jazzy/ament_flake8/0.17.1-1.tar.gz";
    name = "0.17.1-1.tar.gz";
    sha256 = "09a8309875c441b17af1c2c76a0c9c3ad9eddc6dfc0fc6350456d3f6d78356cd";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ament-lint python3Packages.flake8 python3Packages.flake8-docstrings python3Packages.flake8-import-order ];

  meta = {
    description = "The ability to check code for style and syntax conventions with flake8.";
    license = with lib.licenses; [ asl20 ];
  };
}

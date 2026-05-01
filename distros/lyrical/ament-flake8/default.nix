
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-ament-flake8";
  version = "0.20.5-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/lyrical/ament_flake8/0.20.5-4.tar.gz";
    name = "0.20.5-4.tar.gz";
    sha256 = "7a07458bd1a8af0a52e8163a47760ad8f87dc85793654f7695faa3e07e1e317e";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ament-lint python3Packages.flake8 python3Packages.flake8-blind-except python3Packages.flake8-class-newline python3Packages.flake8-deprecated python3Packages.flake8-import-order ];

  meta = {
    description = "The ability to check code for style and syntax conventions with flake8.";
    license = with lib.licenses; [ asl20 ];
  };
}

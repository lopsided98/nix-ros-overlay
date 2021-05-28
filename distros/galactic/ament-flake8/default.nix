
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint, python3Packages }:
buildRosPackage {
  pname = "ros-galactic-ament-flake8";
  version = "0.10.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/galactic/ament_flake8/0.10.6-1.tar.gz";
    name = "0.10.6-1.tar.gz";
    sha256 = "a96f04128b3af65553e20d9d233fe47945c9e557bdd1f1fa59396c156d1d4f0b";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ament-lint python3Packages.flake8 ];

  meta = {
    description = ''The ability to check code for style and syntax conventions with flake8.'';
    license = with lib.licenses; [ asl20 ];
  };
}

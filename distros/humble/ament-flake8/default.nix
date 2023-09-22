
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint, python3Packages }:
buildRosPackage {
  pname = "ros-humble-ament-flake8";
  version = "0.12.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/humble/ament_flake8/0.12.8-1.tar.gz";
    name = "0.12.8-1.tar.gz";
    sha256 = "4a65f3fcd8063dc0ff53988b5449541c33bf15d56ad0f4a3bdda78ddaf390586";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ament-lint python3Packages.flake8 ];

  meta = {
    description = ''The ability to check code for style and syntax conventions with flake8.'';
    license = with lib.licenses; [ asl20 ];
  };
}

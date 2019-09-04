
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint, python3Packages }:
buildRosPackage {
  pname = "ros-dashing-ament-flake8";
  version = "0.7.9-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/ament_lint-release/archive/release/dashing/ament_flake8/0.7.9-1.tar.gz;
    sha256 = "71ba3b0efcf3ab29f3d009d655916b0f075808653d6048f962f35da07eb35b62";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.flake8 ament-lint ];

  meta = {
    description = ''The ability to check code for style and syntax conventions with flake8.'';
    license = with lib.licenses; [ asl20 ];
  };
}

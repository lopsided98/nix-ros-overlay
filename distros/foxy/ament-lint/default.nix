
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl,  }:
buildRosPackage {
  pname = "ros-foxy-ament-lint";
  version = "0.9.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/foxy/ament_lint/0.9.6-1.tar.gz";
    name = "0.9.6-1.tar.gz";
    sha256 = "3e23ac3262d07507d9be01e81e3b0364c1f18e554952585832c58280bc65edc5";
  };

  buildType = "ament_python";

  meta = {
    description = ''Providing common API for ament linter packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}

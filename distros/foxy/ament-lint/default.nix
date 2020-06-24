
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl,  }:
buildRosPackage {
  pname = "ros-foxy-ament-lint";
  version = "0.9.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/foxy/ament_lint/0.9.5-1.tar.gz";
    name = "0.9.5-1.tar.gz";
    sha256 = "9c8d0cac3a01956469f73a6cce9536b01dc648405b5be09ce8e59bba11a2f3aa";
  };

  buildType = "ament_python";

  meta = {
    description = ''Providing common API for ament linter packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}

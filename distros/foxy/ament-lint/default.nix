
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl,  }:
buildRosPackage {
  pname = "ros-foxy-ament-lint";
  version = "0.9.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/foxy/ament_lint/0.9.7-1.tar.gz";
    name = "0.9.7-1.tar.gz";
    sha256 = "9aee5e2700aae351fed70c81df96070afaa1fe5eb3509b018e1b58f5064ae884";
  };

  buildType = "ament_python";

  meta = {
    description = ''Providing common API for ament linter packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}

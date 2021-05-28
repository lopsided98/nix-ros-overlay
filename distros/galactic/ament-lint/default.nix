
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl,  }:
buildRosPackage {
  pname = "ros-galactic-ament-lint";
  version = "0.10.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/galactic/ament_lint/0.10.6-1.tar.gz";
    name = "0.10.6-1.tar.gz";
    sha256 = "7fcf86bd8e3682d7be41d3a380cc36d7788ffc4eb36f326aa1b5732f2770a626";
  };

  buildType = "ament_python";

  meta = {
    description = ''Providing common API for ament linter packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}

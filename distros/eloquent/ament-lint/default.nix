
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl,  }:
buildRosPackage {
  pname = "ros-eloquent-ament-lint";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/eloquent/ament_lint/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "e8fca43447c13030da9315d182e28229fcae3ed835a7edc7366aee4b1fb62760";
  };

  buildType = "ament_python";

  meta = {
    description = ''Providing common API for ament linter packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}

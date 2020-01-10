
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl,  }:
buildRosPackage {
  pname = "ros-eloquent-ament-lint";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/eloquent/ament_lint/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "a818bb4a8d86cd98c7446dfa4f94ead7dc4a6a35a1df818e22d81ff11f3cea98";
  };

  buildType = "ament_python";

  meta = {
    description = ''Providing common API for ament linter packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}

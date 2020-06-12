
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl,  }:
buildRosPackage {
  pname = "ros-foxy-ament-lint";
  version = "0.9.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/foxy/ament_lint/0.9.4-1.tar.gz";
    name = "0.9.4-1.tar.gz";
    sha256 = "ba2ac821605207b451f48ec1cf19d8df8577777e431b0ab9f7af97862aad97c2";
  };

  buildType = "ament_python";

  meta = {
    description = ''Providing common API for ament linter packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl,  }:
buildRosPackage {
  pname = "ros-rolling-ament-lint";
  version = "0.16.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_lint/0.16.0-1.tar.gz";
    name = "0.16.0-1.tar.gz";
    sha256 = "f7fb82b5f4fe8e70fad466a08699dfa38cdaa2db47ed71f92fda4be4bc910c06";
  };

  buildType = "ament_python";

  meta = {
    description = ''Providing common API for ament linter packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}

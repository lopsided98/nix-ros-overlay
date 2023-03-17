
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl,  }:
buildRosPackage {
  pname = "ros-rolling-ament-lint";
  version = "0.14.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_lint/0.14.0-1.tar.gz";
    name = "0.14.0-1.tar.gz";
    sha256 = "f140c71d9aae2cc4d8f59004d8c4a3457a37fd8c6e81be027f80237e93b78db0";
  };

  buildType = "ament_python";

  meta = {
    description = ''Providing common API for ament linter packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}

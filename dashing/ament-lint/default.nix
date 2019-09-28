
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl,  }:
buildRosPackage {
  pname = "ros-dashing-ament-lint";
  version = "0.7.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/dashing/ament_lint/0.7.10-1.tar.gz";
    name = "0.7.10-1.tar.gz";
    sha256 = "03441d794b3c321522c9e2c10fa3887a4fd4d8a8590f5e62e1877665a4bf6f02";
  };

  buildType = "ament_python";

  meta = {
    description = ''Providing common API for ament linter packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl,  }:
buildRosPackage {
  pname = "ros-dashing-ament-lint";
  version = "0.7.12-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/dashing/ament_lint/0.7.12-1.tar.gz";
    name = "0.7.12-1.tar.gz";
    sha256 = "e2dc547f24c5373a37dfca3d01dba2f7fcc11dd2dff503b6c63ee32ff2cb148c";
  };

  buildType = "ament_python";

  meta = {
    description = ''Providing common API for ament linter packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}

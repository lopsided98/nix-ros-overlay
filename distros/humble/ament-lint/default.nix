
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl,  }:
buildRosPackage {
  pname = "ros-humble-ament-lint";
  version = "0.12.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/humble/ament_lint/0.12.6-1.tar.gz";
    name = "0.12.6-1.tar.gz";
    sha256 = "92cae4d967ac67fdec87484b1f5b097d70f6702017f1b7712fd906ac0bf0b066";
  };

  buildType = "ament_python";

  meta = {
    description = ''Providing common API for ament linter packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl,  }:
buildRosPackage {
  pname = "ros-humble-ament-lint";
  version = "0.12.14-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/humble/ament_lint/0.12.14-1.tar.gz";
    name = "0.12.14-1.tar.gz";
    sha256 = "3200d61c9b1fe3126a73dfbb68f4f168124f88ed0cd07e738b727e24a828bbf9";
  };

  buildType = "ament_python";

  meta = {
    description = "Providing common API for ament linter packages.";
    license = with lib.licenses; [ asl20 ];
  };
}

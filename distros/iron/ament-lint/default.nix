
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl,  }:
buildRosPackage {
  pname = "ros-iron-ament-lint";
  version = "0.14.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/iron/ament_lint/0.14.3-1.tar.gz";
    name = "0.14.3-1.tar.gz";
    sha256 = "8c5cea55ac0c61fde8e5ca7d5eb091f7d1f907473f4afa65fbc9d37e05a05d9a";
  };

  buildType = "ament_python";

  meta = {
    description = "Providing common API for ament linter packages.";
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl,  }:
buildRosPackage {
  pname = "ros-iron-ament-lint";
  version = "0.14.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/iron/ament_lint/0.14.4-1.tar.gz";
    name = "0.14.4-1.tar.gz";
    sha256 = "455dd5bf016ecf52176246663e4003c846cb7ef7a829a6af13f3c5607a3e7030";
  };

  buildType = "ament_python";

  meta = {
    description = "Providing common API for ament linter packages.";
    license = with lib.licenses; [ asl20 ];
  };
}

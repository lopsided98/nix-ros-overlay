
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl,  }:
buildRosPackage {
  pname = "ros-humble-ament-lint";
  version = "0.12.12-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/humble/ament_lint/0.12.12-1.tar.gz";
    name = "0.12.12-1.tar.gz";
    sha256 = "0ff1c8c4df3a0c4f21ac7e6933b30e0f1c19d8791f946d76f1ffd79fd76c8163";
  };

  buildType = "ament_python";

  meta = {
    description = "Providing common API for ament linter packages.";
    license = with lib.licenses; [ asl20 ];
  };
}

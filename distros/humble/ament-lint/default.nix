
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl,  }:
buildRosPackage {
  pname = "ros-humble-ament-lint";
  version = "0.12.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/humble/ament_lint/0.12.4-1.tar.gz";
    name = "0.12.4-1.tar.gz";
    sha256 = "d8e491b4bb58e3199fcb6bcbd183c4788213b1dcbb734b805b765aed5d4ae96e";
  };

  buildType = "ament_python";

  meta = {
    description = ''Providing common API for ament linter packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}

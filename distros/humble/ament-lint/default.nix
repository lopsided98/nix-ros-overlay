
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl,  }:
buildRosPackage {
  pname = "ros-humble-ament-lint";
  version = "0.12.7-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/humble/ament_lint/0.12.7-2.tar.gz";
    name = "0.12.7-2.tar.gz";
    sha256 = "7cc63054678276af19d9ddb8999fa0a88e70e5a1205874a9f9d4c9fea1472c5a";
  };

  buildType = "ament_python";

  meta = {
    description = ''Providing common API for ament linter packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}

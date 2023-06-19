
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl,  }:
buildRosPackage {
  pname = "ros-iron-ament-lint";
  version = "0.14.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/iron/ament_lint/0.14.1-2.tar.gz";
    name = "0.14.1-2.tar.gz";
    sha256 = "c179f120fdffee8be8032f670c91dc0026fdf227107c0bf19c7789c0bf5a0bc4";
  };

  buildType = "ament_python";

  meta = {
    description = ''Providing common API for ament linter packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}

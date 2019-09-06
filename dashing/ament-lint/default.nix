
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl,  }:
buildRosPackage rec {
  pname = "ros-dashing-ament-lint";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/dashing/ament_lint/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "2168a7711ed032f56f5d61b0f39e7392a34244e562ccc53ac834860e062ba3d3";
  };

  buildType = "ament_python";

  meta = {
    description = ''Providing common API for ament linter packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}

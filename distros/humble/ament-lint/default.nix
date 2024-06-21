
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl,  }:
buildRosPackage {
  pname = "ros-humble-ament-lint";
  version = "0.12.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/humble/ament_lint/0.12.11-1.tar.gz";
    name = "0.12.11-1.tar.gz";
    sha256 = "6748cfc3afd167ac3573a06b4a6d3c7ccaa463bfb27b69bb771882a4521d4474";
  };

  buildType = "ament_python";

  meta = {
    description = "Providing common API for ament linter packages.";
    license = with lib.licenses; [ asl20 ];
  };
}

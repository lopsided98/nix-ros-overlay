
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl,  }:
buildRosPackage {
  pname = "ros-foxy-ament-lint";
  version = "0.9.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/foxy/ament_lint/0.9.8-1.tar.gz";
    name = "0.9.8-1.tar.gz";
    sha256 = "994c24074ffcfa92709f0528ceb4d6ceaf6c25a5be5a2b3c9a698c42cf42fbfe";
  };

  buildType = "ament_python";

  meta = {
    description = ''Providing common API for ament linter packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}

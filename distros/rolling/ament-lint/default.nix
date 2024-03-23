
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-ament-lint";
  version = "0.16.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_lint/0.16.3-2.tar.gz";
    name = "0.16.3-2.tar.gz";
    sha256 = "11487f7e46ecc233de96f3455cd70f6ab779eacbe589871a52023608d66094dd";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest ];

  meta = {
    description = "Providing common API for ament linter packages.";
    license = with lib.licenses; [ asl20 ];
  };
}

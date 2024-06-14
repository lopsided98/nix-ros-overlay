
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, ros-environment }:
buildRosPackage {
  pname = "ros-iron-steering-functions";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/steering_functions-release/archive/release/iron/steering_functions/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "5705ca192897c9d00cb70825105cb17f1633f6f1b316a6c2689887cd42c2e7d9";
  };

  buildType = "cmake";
  buildInputs = [ cmake ros-environment ];
  propagatedBuildInputs = [ eigen ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The steering_functions package";
    license = with lib.licenses; [ asl20 ];
  };
}

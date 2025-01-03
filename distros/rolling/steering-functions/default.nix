
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, ros-environment }:
buildRosPackage {
  pname = "ros-rolling-steering-functions";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/steering_functions-release/archive/release/rolling/steering_functions/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "13312876b7d1b2d2456154558ebb137ba6421f721db612ab04dad6aa18d3bc2a";
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

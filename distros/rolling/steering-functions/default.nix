
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, ros-environment }:
buildRosPackage {
  pname = "ros-rolling-steering-functions";
  version = "0.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/steering_functions-release/archive/release/rolling/steering_functions/0.3.0-2.tar.gz";
    name = "0.3.0-2.tar.gz";
    sha256 = "bd8a62bfa9d8fd622d991357d44b2eafde22dfc1e723105ce5ce154b480b532b";
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


# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, ros-environment }:
buildRosPackage {
  pname = "ros-kilted-steering-functions";
  version = "0.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/steering_functions-release/archive/release/kilted/steering_functions/0.3.0-2.tar.gz";
    name = "0.3.0-2.tar.gz";
    sha256 = "8036879a5a003bb19a83ea6ff8d8c0c174c1fcb98c975f53e2501aab820dea1b";
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


# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, ros-environment }:
buildRosPackage {
  pname = "ros-jazzy-steering-functions";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/steering_functions-release/archive/release/jazzy/steering_functions/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "72a956d0b963e8cc139102de2f597a06d22d1c51cfe634d953976ddd4edd7965";
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

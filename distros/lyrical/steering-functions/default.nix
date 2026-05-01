
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, ros-environment }:
buildRosPackage {
  pname = "ros-lyrical-steering-functions";
  version = "0.3.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/steering_functions-release/archive/release/lyrical/steering_functions/0.3.0-3.tar.gz";
    name = "0.3.0-3.tar.gz";
    sha256 = "03819ab8cfd93233a3f17e72a58e10f0b0d4199c267d96ec2c8e58c3144af9f5";
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

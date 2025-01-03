
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, rmf-traffic }:
buildRosPackage {
  pname = "ros-jazzy-rmf-traffic-examples";
  version = "3.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic-release/archive/release/jazzy/rmf_traffic_examples/3.3.3-1.tar.gz";
    name = "3.3.3-1.tar.gz";
    sha256 = "5e9b1bd88ebc82bca8b5ede3874676473843f8802bed8bf1beef7a2bcc8bd7a1";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ rmf-traffic ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Examples of how to use the rmf_traffic library";
    license = with lib.licenses; [ asl20 ];
  };
}

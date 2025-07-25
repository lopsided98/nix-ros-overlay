
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, rmf-traffic }:
buildRosPackage {
  pname = "ros-kilted-rmf-traffic-examples";
  version = "3.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic-release/archive/release/kilted/rmf_traffic_examples/3.5.0-1.tar.gz";
    name = "3.5.0-1.tar.gz";
    sha256 = "fd3a5d68276f141e67b6b54a023e0dc393aa96d66154a8a2c0273c697a4a6392";
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

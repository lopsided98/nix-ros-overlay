
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, rmf-traffic }:
buildRosPackage {
  pname = "ros-lyrical-rmf-traffic-examples";
  version = "3.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic-release/archive/release/lyrical/rmf_traffic_examples/3.8.1-1.tar.gz";
    name = "3.8.1-1.tar.gz";
    sha256 = "4368e755703933caceab4e598eb175e60f0e58b5885014033cab0c25341d8d2c";
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

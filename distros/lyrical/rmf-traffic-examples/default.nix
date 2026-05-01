
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, rmf-traffic }:
buildRosPackage {
  pname = "ros-lyrical-rmf-traffic-examples";
  version = "3.7.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic-release/archive/release/lyrical/rmf_traffic_examples/3.7.0-3.tar.gz";
    name = "3.7.0-3.tar.gz";
    sha256 = "5c8b04cacc6aa5a5ea04227a8512b1cfba101d342a0a020c4e421327c51ed510";
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

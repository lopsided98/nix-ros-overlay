
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, rmf-traffic }:
buildRosPackage {
  pname = "ros-rolling-rmf-traffic-examples";
  version = "3.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic-release/archive/release/rolling/rmf_traffic_examples/3.7.0-1.tar.gz";
    name = "3.7.0-1.tar.gz";
    sha256 = "14e05566f8437d26a0e33d74fff72640f0290e38696c7287352b03261fd8958e";
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

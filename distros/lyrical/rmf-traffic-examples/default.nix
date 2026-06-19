
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, rmf-traffic }:
buildRosPackage {
  pname = "ros-lyrical-rmf-traffic-examples";
  version = "3.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic-release/archive/release/lyrical/rmf_traffic_examples/3.8.0-1.tar.gz";
    name = "3.8.0-1.tar.gz";
    sha256 = "848d9ad13da757998094581d4f15eb8e30898291556e5ce7dda2edffff857d51";
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

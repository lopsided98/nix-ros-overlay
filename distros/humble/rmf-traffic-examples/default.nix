
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, rmf-traffic }:
buildRosPackage {
  pname = "ros-humble-rmf-traffic-examples";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic-release/archive/release/humble/rmf_traffic_examples/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "9c15afd51cc1c58b3ed36df1c5135b2860d65815709a59f8aed735b9907e1ce4";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ rmf-traffic ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Examples of how to use the rmf_traffic library'';
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, rmf-traffic }:
buildRosPackage {
  pname = "ros-rolling-rmf-traffic-examples";
  version = "3.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic-release/archive/release/rolling/rmf_traffic_examples/3.0.0-2.tar.gz";
    name = "3.0.0-2.tar.gz";
    sha256 = "16e6625ded3ebffbfb3871353e0cba811776837bdc0446369ffd2aeb8090163b";
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

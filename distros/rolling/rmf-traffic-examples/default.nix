
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, rmf-traffic }:
buildRosPackage {
  pname = "ros-rolling-rmf-traffic-examples";
  version = "3.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic-release/archive/release/rolling/rmf_traffic_examples/3.3.0-1.tar.gz";
    name = "3.3.0-1.tar.gz";
    sha256 = "5b8cf3bfc42d1231c4b87d9ed09a9cc814cc89ee8488f7721358f6a695f1a392";
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

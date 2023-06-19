
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, rmf-traffic }:
buildRosPackage {
  pname = "ros-iron-rmf-traffic-examples";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic-release/archive/release/iron/rmf_traffic_examples/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "c223e1783397a577947e4d6817fa4a850a4c15c09ffd2dd9fe2a2276020f0958";
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

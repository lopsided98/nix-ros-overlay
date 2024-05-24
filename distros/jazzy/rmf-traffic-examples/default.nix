
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, rmf-traffic }:
buildRosPackage {
  pname = "ros-jazzy-rmf-traffic-examples";
  version = "3.3.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic-release/archive/release/jazzy/rmf_traffic_examples/3.3.1-3.tar.gz";
    name = "3.3.1-3.tar.gz";
    sha256 = "c37c6bd28de32f6f93be23261ece638277c3d2c0e8c75bd8086af6eea262aebc";
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

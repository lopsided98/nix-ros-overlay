
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, rmf-traffic }:
buildRosPackage {
  pname = "ros-rolling-rmf-traffic-examples";
  version = "3.3.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic-release/archive/release/rolling/rmf_traffic_examples/3.3.1-2.tar.gz";
    name = "3.3.1-2.tar.gz";
    sha256 = "9a689584470a8465b875852c5f769a43fd9586f2cbca76b4d8a1875f3770cac8";
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

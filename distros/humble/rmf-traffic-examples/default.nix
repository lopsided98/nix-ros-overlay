
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, rmf-traffic }:
buildRosPackage {
  pname = "ros-humble-rmf-traffic-examples";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic-release/archive/release/humble/rmf_traffic_examples/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "728002f0eff7e30f0d7999bbde97d72f28e87b30ed03d929ad14b66c0695f042";
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

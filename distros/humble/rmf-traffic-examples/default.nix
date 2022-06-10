
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rmf-traffic }:
buildRosPackage {
  pname = "ros-humble-rmf-traffic-examples";
  version = "2.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic-release/archive/release/humble/rmf_traffic_examples/2.0.0-2.tar.gz";
    name = "2.0.0-2.tar.gz";
    sha256 = "17e483ee960b30bf7c7dd398fb41bc0671e0921264eb5f5c09e808393418da15";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ rmf-traffic ];

  meta = {
    description = ''Examples of how to use the rmf_traffic library'';
    license = with lib.licenses; [ asl20 ];
  };
}

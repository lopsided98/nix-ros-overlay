
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, rmf-traffic }:
buildRosPackage {
  pname = "ros-iron-rmf-traffic-examples";
  version = "3.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic-release/archive/release/iron/rmf_traffic_examples/3.1.1-1.tar.gz";
    name = "3.1.1-1.tar.gz";
    sha256 = "acc468c5a39d9bdca0f775af23baff84717a795624737c50c870eddffc661694";
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

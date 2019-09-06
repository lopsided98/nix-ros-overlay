
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, shape-msgs, std-srvs, ament-cmake, actionlib-msgs, trajectory-msgs, sensor-msgs, nav-msgs, std-msgs, diagnostic-msgs, visualization-msgs, geometry-msgs, stereo-msgs }:
buildRosPackage {
  pname = "ros-crystal-common-interfaces";
  version = "0.6.1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/crystal/common_interfaces/0.6.1-0.tar.gz";
    name = "0.6.1-0.tar.gz";
    sha256 = "ff57c8465eb21ae5a6d109da36edd8b13c31c475c9e0f18fcad0c8119889f136";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ builtin-interfaces shape-msgs std-srvs actionlib-msgs trajectory-msgs sensor-msgs nav-msgs std-msgs diagnostic-msgs visualization-msgs geometry-msgs stereo-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''common_interfaces contains messages and services that are widely used by other ROS packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, ament-cmake, builtin-interfaces, diagnostic-msgs, geometry-msgs, nav-msgs, sensor-msgs, shape-msgs, std-msgs, std-srvs, stereo-msgs, trajectory-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-eloquent-common-interfaces";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/eloquent/common_interfaces/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "24e9b7ea8ff92a5cc1cf0c946c1dca95eec41e376e9cf8cdfad50c8a70256096";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ actionlib-msgs builtin-interfaces diagnostic-msgs geometry-msgs nav-msgs sensor-msgs shape-msgs std-msgs std-srvs stereo-msgs trajectory-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''common_interfaces contains messages and services that are widely used by other ROS packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}

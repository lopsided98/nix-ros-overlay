
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, trajectory-msgs, sensor-msgs, diagnostic-msgs, geometry-msgs, std-msgs, std-srvs, shape-msgs, ament-cmake, stereo-msgs, actionlib-msgs, visualization-msgs, builtin-interfaces, nav-msgs }:
buildRosPackage {
  pname = "ros-dashing-common-interfaces";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/dashing/common_interfaces/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "be2d1306c2f36e4581fe343c79706c60d65641d4aa6f8081a62be03db91cfd32";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ trajectory-msgs sensor-msgs geometry-msgs diagnostic-msgs std-msgs std-srvs shape-msgs stereo-msgs actionlib-msgs visualization-msgs builtin-interfaces nav-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''common_interfaces contains messages and services that are widely used by other ROS packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, diagnostic-msgs, geometry-msgs, nav-msgs, sensor-msgs, shape-msgs, std-msgs, std-srvs, stereo-msgs, trajectory-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-common-interfaces";
  version = "5.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/rolling/common_interfaces/5.4.2-1.tar.gz";
    name = "5.4.2-1.tar.gz";
    sha256 = "201f1953d17ec6126e1953caa70a91b10cad2497bf2b42043baf57d9f89d8a15";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ actionlib-msgs builtin-interfaces diagnostic-msgs geometry-msgs nav-msgs sensor-msgs shape-msgs std-msgs std-srvs stereo-msgs trajectory-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "common_interfaces contains messages and services that are widely used by other ROS packages.";
    license = with lib.licenses; [ asl20 ];
  };
}

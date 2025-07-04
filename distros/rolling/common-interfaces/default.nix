
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, diagnostic-msgs, geometry-msgs, nav-msgs, sensor-msgs, shape-msgs, std-msgs, std-srvs, stereo-msgs, trajectory-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-common-interfaces";
  version = "5.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/rolling/common_interfaces/5.8.1-1.tar.gz";
    name = "5.8.1-1.tar.gz";
    sha256 = "b4f2bacb68bdc47360104c807f184f8736e907768e5be4f0892fde8805613654";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces diagnostic-msgs geometry-msgs nav-msgs sensor-msgs shape-msgs std-msgs std-srvs stereo-msgs trajectory-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "common_interfaces contains messages and services that are widely used by other ROS packages.";
    license = with lib.licenses; [ asl20 ];
  };
}

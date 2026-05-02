
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-autoware-internal-metric-msgs";
  version = "1.12.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_internal_msgs-release/archive/release/rolling/autoware_internal_metric_msgs/1.12.1-2.tar.gz";
    name = "1.12.1-2.tar.gz";
    sha256 = "fe60779cc528d6789fdf26f780e6d0c6322f5502a8fe30c6be89a8116550ee7d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The autoware_internal_metric_msgs package";
    license = with lib.licenses; [ asl20 ];
  };
}

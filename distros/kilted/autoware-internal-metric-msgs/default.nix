
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-kilted-autoware-internal-metric-msgs";
  version = "1.8.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_internal_msgs-release/archive/release/kilted/autoware_internal_metric_msgs/1.8.1-3.tar.gz";
    name = "1.8.1-3.tar.gz";
    sha256 = "2f5c51111a9428ee5341ed689b5d664df2aef36ac09fe5e0dab48d80b9389db1";
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

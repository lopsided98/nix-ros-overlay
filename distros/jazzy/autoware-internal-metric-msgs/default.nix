
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-autoware-internal-metric-msgs";
  version = "1.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_internal_msgs-release/archive/release/jazzy/autoware_internal_metric_msgs/1.8.1-1.tar.gz";
    name = "1.8.1-1.tar.gz";
    sha256 = "91377b43cfca74a30b262b2dea5e748a333f6f47a43dfd953898b77ff1f1c757";
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

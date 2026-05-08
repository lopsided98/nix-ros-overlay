
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-gmock, ament-lint-auto, autoware-adapi-v1-msgs, autoware-cmake, autoware-component-interface-specs, autoware-lint-common, autoware-map-height-fitter, autoware-motion-utils, autoware-qos-utils, autoware-utils-diagnostics, autoware-utils-logging, geometry-msgs, rclcpp, rclcpp-components, std-srvs }:
buildRosPackage {
  pname = "ros-jazzy-autoware-pose-initializer";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_pose_initializer/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "564427a116cf7d732fe616576f3cc6c481001c5de1e950afa706d86ab526f0e5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake autoware-cmake ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-gmock ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-adapi-v1-msgs autoware-component-interface-specs autoware-map-height-fitter autoware-motion-utils autoware-qos-utils autoware-utils-diagnostics autoware-utils-logging geometry-msgs rclcpp rclcpp-components std-srvs ];
  nativeBuildInputs = [ ament-cmake autoware-cmake ];

  meta = {
    description = "The autoware_pose_initializer package";
    license = with lib.licenses; [ asl20 ];
  };
}

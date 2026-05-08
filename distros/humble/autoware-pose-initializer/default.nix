
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-gmock, ament-lint-auto, autoware-adapi-v1-msgs, autoware-cmake, autoware-component-interface-specs, autoware-lint-common, autoware-map-height-fitter, autoware-motion-utils, autoware-qos-utils, autoware-utils-diagnostics, autoware-utils-logging, geometry-msgs, rclcpp, rclcpp-components, std-srvs }:
buildRosPackage {
  pname = "ros-humble-autoware-pose-initializer";
  version = "1.8.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_pose_initializer/1.8.0-3.tar.gz";
    name = "1.8.0-3.tar.gz";
    sha256 = "1c60e364ce4d7cd6db233c288662f13598506a841e4939cb5bf048d595496db7";
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

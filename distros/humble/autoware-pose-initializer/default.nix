
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-gmock, ament-lint-auto, autoware-adapi-v1-msgs, autoware-cmake, autoware-component-interface-specs, autoware-lint-common, autoware-map-height-fitter, autoware-motion-utils, autoware-qos-utils, autoware-utils-diagnostics, autoware-utils-geometry, autoware-utils-logging, geometry-msgs, rclcpp, rclcpp-components, std-srvs }:
buildRosPackage {
  pname = "ros-humble-autoware-pose-initializer";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_pose_initializer/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "c9f5b414681ab77cf846ac95fc7342e643db8014f861212bcad86c2752851811";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake autoware-cmake ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-gmock ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-adapi-v1-msgs autoware-component-interface-specs autoware-map-height-fitter autoware-motion-utils autoware-qos-utils autoware-utils-diagnostics autoware-utils-geometry autoware-utils-logging geometry-msgs rclcpp rclcpp-components std-srvs ];
  nativeBuildInputs = [ ament-cmake autoware-cmake ];

  meta = {
    description = "The autoware_pose_initializer package";
    license = with lib.licenses; [ asl20 ];
  };
}

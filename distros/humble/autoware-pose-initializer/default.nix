
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-gmock, ament-lint-auto, autoware-adapi-v1-msgs, autoware-cmake, autoware-component-interface-specs, autoware-lint-common, autoware-map-height-fitter, autoware-motion-utils, autoware-utils-diagnostics, autoware-utils-logging, geometry-msgs, rclcpp, rclcpp-components, std-srvs }:
buildRosPackage {
  pname = "ros-humble-autoware-pose-initializer";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_pose_initializer/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "7c9aefac477bf94155c8a1f8172618ea5cdbc420430dc631ccd687f70b480f44";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake autoware-cmake ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-gmock ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-adapi-v1-msgs autoware-component-interface-specs autoware-map-height-fitter autoware-motion-utils autoware-utils-diagnostics autoware-utils-logging geometry-msgs rclcpp rclcpp-components std-srvs ];
  nativeBuildInputs = [ ament-cmake autoware-cmake ];

  meta = {
    description = "The autoware_pose_initializer package";
    license = with lib.licenses; [ asl20 ];
  };
}

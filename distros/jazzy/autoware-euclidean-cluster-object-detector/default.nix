
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, autoware-cmake, autoware-crop-box-filter, autoware-lint-common, autoware-perception-msgs, autoware-point-types, autoware-utils-debug, autoware-utils-diagnostics, autoware-utils-system, geometry-msgs, pcl, pcl-conversions, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-autoware-euclidean-cluster-object-detector";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_euclidean_cluster_object_detector/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "a3394e85f9c02f92db146ddd4127cfbad23ddf118b2491297e43f99b76968319";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-crop-box-filter autoware-perception-msgs autoware-point-types autoware-utils-debug autoware-utils-diagnostics autoware-utils-system geometry-msgs pcl pcl-conversions rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_euclidean_cluster_object_detector package";
    license = with lib.licenses; [ asl20 ];
  };
}

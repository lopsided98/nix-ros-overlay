
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, class-loader, cv-bridge, image-geometry, image-proc, image-transport, message-filters, opencv, rclcpp, rclcpp-components, sensor-msgs, stereo-msgs, tf2, tf2-eigen, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-depth-image-proc";
  version = "8.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_pipeline-release/archive/release/rolling/depth_image_proc/8.0.0-1.tar.gz";
    name = "8.0.0-1.tar.gz";
    sha256 = "6de7f3a52c230b72f3eff089c66f0cc575e6c3e11cb24dd55877a92339ea3d20";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto class-loader ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge image-geometry image-proc image-transport message-filters opencv opencv.cxxdev rclcpp rclcpp-components sensor-msgs stereo-msgs tf2 tf2-eigen tf2-ros ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Contains components for processing depth images such as those
     produced by OpenNI camera. Functions include creating disparity
     images and point clouds, as well as registering (reprojecting)
     a depth image into another camera frame.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

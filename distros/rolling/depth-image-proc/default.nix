
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, class-loader, cv-bridge, image-geometry, image-transport, message-filters, opencv, rclcpp, rclcpp-components, sensor-msgs, stereo-msgs, tf2, tf2-eigen, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-depth-image-proc";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_pipeline-release/archive/release/rolling/depth_image_proc/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "c740c0d382b7035b4f9984dbec27a5dc6d2e7a5525624b21f966a03b4825a84b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto class-loader ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge image-geometry image-transport message-filters opencv rclcpp rclcpp-components sensor-msgs stereo-msgs tf2 tf2-eigen tf2-ros ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Contains components for processing depth images such as those
     produced by OpenNI camera. Functions include creating disparity
     images and point clouds, as well as registering (reprojecting)
     a depth image into another camera frame.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

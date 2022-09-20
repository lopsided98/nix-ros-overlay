
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, class-loader, cv-bridge, image-geometry, image-transport, message-filters, rclcpp, rclcpp-components, sensor-msgs, stereo-msgs, tf2, tf2-eigen, tf2-ros }:
buildRosPackage {
  pname = "ros-foxy-depth-image-proc";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_pipeline-release/archive/release/foxy/depth_image_proc/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "04708816eecf2a304f244d9feada93ef42b24615532f9e11175b6e95deb79b5f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto class-loader message-filters ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge image-geometry image-transport rclcpp rclcpp-components sensor-msgs stereo-msgs tf2 tf2-eigen tf2-ros ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Contains components for processing depth images such as those
     produced by OpenNI camera. Functions include creating disparity
     images and point clouds, as well as registering (reprojecting)
     a depth image into another camera frame.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

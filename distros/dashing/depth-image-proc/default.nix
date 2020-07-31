
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, class-loader, cv-bridge, image-geometry, image-transport, message-filters, sensor-msgs, stereo-msgs, tf2, tf2-eigen, tf2-ros }:
buildRosPackage {
  pname = "ros-dashing-depth-image-proc";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_pipeline-release/archive/release/dashing/depth_image_proc/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "3e481a585a001d636fbbfa165c88b3cccf13e3434a735e43214c05266bc59794";
  };

  buildType = "ament_cmake";
  buildInputs = [ class-loader message-filters sensor-msgs stereo-msgs ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge image-geometry image-transport tf2 tf2-eigen tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Contains components for processing depth images such as those
     produced by OpenNI camera. Functions include creating disparity
     images and point clouds, as well as registering (reprojecting)
     a depth image into another camera frame.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

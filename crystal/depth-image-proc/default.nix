
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, message-filters, class-loader, ament-lint-common, ament-cmake, ament-lint-auto, image-transport, tf2-eigen, stereo-msgs, cv-bridge, ament-cmake-gtest, tf2, tf2-ros, image-geometry }:
buildRosPackage {
  pname = "ros-crystal-depth-image-proc";
  version = "2.0.0";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_pipeline-release/archive/release/crystal/depth_image_proc/2.0.0-0.tar.gz";
    name = "2.0.0-0.tar.gz";
    sha256 = "ffea92a4b087654cdee1786eda631c4a98b1e7725e9824630a5706a8309b2f58";
  };

  buildType = "ament_cmake";
  buildInputs = [ sensor-msgs message-filters class-loader tf2-eigen image-transport stereo-msgs cv-bridge tf2 tf2-ros image-geometry ];
  checkInputs = [ ament-lint-common ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ image-transport tf2-eigen cv-bridge tf2 tf2-ros image-geometry ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Contains nodelets for processing depth images such as those
     produced by OpenNI camera. Functions include creating disparity
     images and point clouds, as well as registering (reprojecting)
     a depth image into another camera frame.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

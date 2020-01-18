
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, class-loader, cv-bridge, image-geometry, image-transport, message-filters, sensor-msgs, stereo-msgs, tf2, tf2-eigen, tf2-ros }:
buildRosPackage {
  pname = "ros-crystal-depth-image-proc";
  version = "2.0.0";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_pipeline-release/archive/release/crystal/depth_image_proc/2.0.0-0.tar.gz";
    name = "2.0.0-0.tar.gz";
    sha256 = "ffea92a4b087654cdee1786eda631c4a98b1e7725e9824630a5706a8309b2f58";
  };

  buildType = "ament_cmake";
  buildInputs = [ class-loader message-filters sensor-msgs stereo-msgs ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge image-geometry image-transport tf2 tf2-eigen tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Contains nodelets for processing depth images such as those
     produced by OpenNI camera. Functions include creating disparity
     images and point clouds, as well as registering (reprojecting)
     a depth image into another camera frame.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

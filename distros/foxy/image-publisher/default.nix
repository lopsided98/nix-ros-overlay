
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, camera-info-manager, class-loader, cv-bridge, image-geometry, image-transport, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-foxy-image-publisher";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_pipeline-release/archive/release/foxy/image_publisher/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "9d0eb9b5298354d1abd03c9f3fec86c294dbc520c4fca45e7dd5e18b40ebd1c2";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ camera-info-manager class-loader cv-bridge image-geometry image-transport rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''<p>
      Contains a node publish an image stream from single image file
      or avi motion file.
    </p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

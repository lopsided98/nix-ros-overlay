
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, camera-info-manager, class-loader, cv-bridge, image-geometry, image-transport, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-galactic-image-publisher";
  version = "2.2.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_pipeline-release/archive/release/galactic/image_publisher/2.2.1-3.tar.gz";
    name = "2.2.1-3.tar.gz";
    sha256 = "6fb3d679eecb7e653bcc1f53253dfd896613a3944d999109cbfca616424d49f9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ camera-info-manager class-loader cv-bridge image-geometry image-transport rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Contains a node publish an image stream from single image file
      or avi motion file.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

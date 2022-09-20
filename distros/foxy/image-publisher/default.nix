
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, camera-info-manager, class-loader, cv-bridge, image-geometry, image-transport, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-foxy-image-publisher";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_pipeline-release/archive/release/foxy/image_publisher/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "7e3edda86854bb4fa858712e63f18747996d2358de8d001f105aca65a3d6cf00";
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

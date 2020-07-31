
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, camera-info-manager, class-loader, cv-bridge, image-geometry, image-transport, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-foxy-image-publisher";
  version = "2.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_pipeline-release/archive/release/foxy/image_publisher/2.2.0-2.tar.gz";
    name = "2.2.0-2.tar.gz";
    sha256 = "db46da23ed6e55bd07f76e7ef87e77d35eef14a78cc0a07601e8ada1afde468a";
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

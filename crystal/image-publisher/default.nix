
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, ament-lint-common, ament-cmake, image-transport, cv-bridge, ament-cmake-gtest, class-loader, rclcpp, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-image-publisher";
  version = "2.0.0";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_pipeline-release/archive/release/crystal/image_publisher/2.0.0-0.tar.gz";
    name = "2.0.0-0.tar.gz";
    sha256 = "399a70053d065f616ea3b8a4dcc0b8aa5aba278c3e12d60be4dadfffe39dc7eb";
  };

  buildType = "ament_cmake";
  buildInputs = [ camera-info-manager image-transport cv-bridge class-loader rclcpp ];
  checkInputs = [ ament-lint-common ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ camera-info-manager image-transport cv-bridge class-loader rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''<p>
      Contains a node publish an image stream from single image file
      or avi motion file.
    </p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

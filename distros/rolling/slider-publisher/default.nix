
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, python3Packages, rqt-gui-py }:
buildRosPackage {
  pname = "ros-rolling-slider-publisher";
  version = "2.3.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/slider_publisher-release/archive/release/rolling/slider_publisher/2.3.1-2.tar.gz";
    name = "2.3.1-2.tar.gz";
    sha256 = "e27385fdba1f83a05afe70e02d0ec309ad6ba4340290053a05d31bdc908aacde";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ python3Packages.numpy python3Packages.scipy rqt-gui-py ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This packages proposes a slider-based publisher node similar to the joint_state_publisher, but that can publish any type of message or call services.";
    license = with lib.licenses; [ mit ];
  };
}

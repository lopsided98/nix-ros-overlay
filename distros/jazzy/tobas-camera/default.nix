
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-camera-msgs, tobas-camera-ros-interface, tobas-image-processing }:
buildRosPackage {
  pname = "ros-jazzy-tobas-camera";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_camera/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "16bc474828581c4c719c2296bc585b99dcee6e213ce056897671fdb7d43f3141";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-camera-msgs tobas-camera-ros-interface tobas-image-processing ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Aggregation package for Tobas camera drivers, interfaces, messages, and image processing.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}

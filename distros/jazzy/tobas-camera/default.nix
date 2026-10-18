
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-camera-msgs, tobas-camera-ros-interface, tobas-image-processing }:
buildRosPackage {
  pname = "ros-jazzy-tobas-camera";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_camera/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "2985c270d76375cf8a40360ecefdfdf0cd1eeb64a79f91d8de478c787220d783";
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


# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-camera-msgs, tobas-camera-ros-interface, tobas-image-processing }:
buildRosPackage {
  pname = "ros-jazzy-tobas-camera";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_camera/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "8cde951ff5bbb46b951a8a465e133edfb0c5c101dcdc2a0a0635d855f9456104";
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

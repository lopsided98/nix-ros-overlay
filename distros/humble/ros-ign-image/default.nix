
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, ros-gz-image }:
buildRosPackage {
  pname = "ros-humble-ros-ign-image";
  version = "0.244.19-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/humble/ros_ign_image/0.244.19-1.tar.gz";
    name = "0.244.19-1.tar.gz";
    sha256 = "77e51af6cf9b7643be3c2d7ebf0abc0a767240cee0d03beca3e9e9bf4ee8dd6d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-index-cpp ];
  propagatedBuildInputs = [ ros-gz-image ];
  nativeBuildInputs = [ ament-cmake ament-index-cpp ];

  meta = {
    description = "Shim package to redirect to ros_gz_image.";
    license = with lib.licenses; [ asl20 ];
  };
}

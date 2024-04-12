
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, ros-gz-image }:
buildRosPackage {
  pname = "ros-iron-ros-ign-image";
  version = "0.254.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/iron/ros_ign_image/0.254.1-1.tar.gz";
    name = "0.254.1-1.tar.gz";
    sha256 = "2fc71c6f306920826a7163f49d9265f7eb6b30fc17b6417438bf5366a9605ec6";
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

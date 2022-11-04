
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, ros-gz-image }:
buildRosPackage {
  pname = "ros-humble-ros-ign-image";
  version = "0.244.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/humble/ros_ign_image/0.244.9-1.tar.gz";
    name = "0.244.9-1.tar.gz";
    sha256 = "02fcebeeb259c299b5fb622e425718feadb0ab539a0c72809c95045fa57e5d21";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ros-gz-image ];
  nativeBuildInputs = [ ament-cmake ament-index-cpp ];

  meta = {
    description = ''Shim package to redirect to ros_gz_image.'';
    license = with lib.licenses; [ asl20 ];
  };
}

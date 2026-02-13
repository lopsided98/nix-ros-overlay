
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, ros-gz-image }:
buildRosPackage {
  pname = "ros-humble-ros-ign-image";
  version = "0.244.22-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/humble/ros_ign_image/0.244.22-1.tar.gz";
    name = "0.244.22-1.tar.gz";
    sha256 = "f75d12069335d1796bf6563d3126c54d5bb32b20341f04b76673da1b73a3983b";
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

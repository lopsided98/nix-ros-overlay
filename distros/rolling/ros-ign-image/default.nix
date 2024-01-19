
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, ros-gz-image }:
buildRosPackage {
  pname = "ros-rolling-ros-ign-image";
  version = "0.245.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/rolling/ros_ign_image/0.245.0-1.tar.gz";
    name = "0.245.0-1.tar.gz";
    sha256 = "cb4d0e1ada5d7a750da05b86a54e740ee612e5aa5ffbba3dee946757dc4178b1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-index-cpp ];
  propagatedBuildInputs = [ ros-gz-image ];
  nativeBuildInputs = [ ament-cmake ament-index-cpp ];

  meta = {
    description = ''Shim package to redirect to ros_gz_image.'';
    license = with lib.licenses; [ asl20 ];
  };
}

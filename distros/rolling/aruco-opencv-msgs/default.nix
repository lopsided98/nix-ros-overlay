
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-lint-auto, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-aruco-opencv-msgs";
  version = "4.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aruco_opencv-release/archive/release/rolling/aruco_opencv_msgs/4.1.0-3.tar.gz";
    name = "4.1.0-3.tar.gz";
    sha256 = "7a525e6bef105596eb952fe6fb3a4d9b6f2c9e4f4f064e2397e60f0d73805c6b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-cmake-lint-cmake ament-lint-auto ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Message definitions for aruco_opencv package.'';
    license = with lib.licenses; [ mit ];
  };
}


# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-lint-auto, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-aruco-opencv-msgs";
  version = "6.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aruco_opencv-release/archive/release/rolling/aruco_opencv_msgs/6.1.1-1.tar.gz";
    name = "6.1.1-1.tar.gz";
    sha256 = "75710bac0fc12d22697ad5f952ab0e2450decdbd9d0ad132bc3376b8cd83338a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-cmake-lint-cmake ament-lint-auto ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Message definitions for aruco_opencv package.";
    license = with lib.licenses; [ mit ];
  };
}

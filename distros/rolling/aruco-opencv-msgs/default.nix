
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-lint-auto, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-aruco-opencv-msgs";
  version = "7.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aruco_opencv-release/archive/release/rolling/aruco_opencv_msgs/7.0.0-1.tar.gz";
    name = "7.0.0-1.tar.gz";
    sha256 = "d5221b5bf31a54ec1798b3b8b717e8017ecdd27d78521a0d80856360040ae629";
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

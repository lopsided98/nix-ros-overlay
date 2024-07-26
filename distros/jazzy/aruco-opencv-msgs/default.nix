
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-lint-auto, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-aruco-opencv-msgs";
  version = "6.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aruco_opencv-release/archive/release/jazzy/aruco_opencv_msgs/6.0.1-1.tar.gz";
    name = "6.0.1-1.tar.gz";
    sha256 = "f1b29e5fe2ed74777d0a5406d508648284503713769439a72229e40920803a48";
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

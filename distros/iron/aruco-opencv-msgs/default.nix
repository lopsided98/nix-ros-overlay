
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-lint-auto, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-iron-aruco-opencv-msgs";
  version = "5.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aruco_opencv-release/archive/release/iron/aruco_opencv_msgs/5.1.0-1.tar.gz";
    name = "5.1.0-1.tar.gz";
    sha256 = "778a10c6ff82c11b611fac9ab232189d945c9275f8e93def53a91f9aeb7bc300";
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

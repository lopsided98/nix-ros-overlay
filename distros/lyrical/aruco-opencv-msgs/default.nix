
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-lint-auto, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-aruco-opencv-msgs";
  version = "7.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aruco_opencv-release/archive/release/lyrical/aruco_opencv_msgs/7.0.0-1.tar.gz";
    name = "7.0.0-1.tar.gz";
    sha256 = "1c2ff961324d1e4a06622d035dd616a40f56afc9ddcfe1687c4acb6dc512cce6";
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

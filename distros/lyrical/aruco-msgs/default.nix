
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-aruco-msgs";
  version = "5.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aruco_ros-release/archive/release/lyrical/aruco_msgs/5.0.6-1.tar.gz";
    name = "5.0.6-1.tar.gz";
    sha256 = "56d79b741f3534100dd0cd4dcff9383a0648a42e47a4b9c4dcf374e7011cd69d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The aruco_msgs package";
    license = with lib.licenses; [ mit ];
  };
}

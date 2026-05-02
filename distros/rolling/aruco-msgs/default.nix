
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-aruco-msgs";
  version = "5.0.5-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aruco_ros-release/archive/release/rolling/aruco_msgs/5.0.5-2.tar.gz";
    name = "5.0.5-2.tar.gz";
    sha256 = "d6e8a9d2a9eb3f4ad95f2ffcc6a79ffdab6c4e7e2afe7c47b0b708b3731a83f9";
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

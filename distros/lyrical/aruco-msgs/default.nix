
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-aruco-msgs";
  version = "5.0.5-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aruco_ros-release/archive/release/lyrical/aruco_msgs/5.0.5-3.tar.gz";
    name = "5.0.5-3.tar.gz";
    sha256 = "68b731578fb4b2374f97e4175ca69e39af7e6df4fe67b3824624a3626688ff9b";
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

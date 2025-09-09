
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-rolling-cx-msgs";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/rolling/cx_msgs/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "5f0ccdb30ba9b0038d6f415df32c413b4bf6ca9a7fff32c87ea1d0bb079b4a5f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-generators ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS interfaces for ROS2 CLIPS-Executive";
    license = with lib.licenses; [ asl20 ];
  };
}

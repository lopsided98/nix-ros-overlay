
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-rolling-geographic-msgs";
  version = "1.0.5-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geographic_info-release/archive/release/rolling/geographic_msgs/1.0.5-2.tar.gz";
    name = "1.0.5-2.tar.gz";
    sha256 = "7901d1e58339646d7be1be410bb3a2a08c1504a5a2dd277a465d49336f84507c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime std-msgs unique-identifier-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS messages for Geographic Information Systems.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

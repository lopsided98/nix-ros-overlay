
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-tobas-real-msgs";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_real_msgs/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "db6a321b7b3f72fb129cf14fbfe7b6f9ae644c3e88a008235952baa46f3d1be3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 services for configuring real-hardware sensor and RC input handlers.";
    license = with lib.licenses; [ asl20 ];
  };
}

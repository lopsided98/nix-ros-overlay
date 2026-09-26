
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-tobas-real-msgs";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_real_msgs/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "04308c9c06210a13e5349267e3cd18f3a62b7bc94e2b304f02ef7d238478725e";
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


# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-core-generators, rosidl-core-runtime }:
buildRosPackage {
  pname = "ros-rolling-service-msgs";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/rolling/service_msgs/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "1608d0a19f5ffc5fc5d21ff12fc7939640c9882c57080b0604cc2109138024b9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-core-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-core-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-core-generators ];

  meta = {
    description = "Messages definitions common among all ROS services";
    license = with lib.licenses; [ asl20 ];
  };
}

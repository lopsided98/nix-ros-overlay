
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-core-generators, rosidl-core-runtime }:
buildRosPackage {
  pname = "ros-lyrical-service-msgs";
  version = "2.4.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/lyrical/service_msgs/2.4.4-3.tar.gz";
    name = "2.4.4-3.tar.gz";
    sha256 = "3d36da0f7dd425f09cc4630ad788e7e7e127880d3149f6f1cb02676c9f4ef3e8";
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

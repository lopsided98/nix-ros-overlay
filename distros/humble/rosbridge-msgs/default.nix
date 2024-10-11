
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-rosbridge-msgs";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/humble/rosbridge_msgs/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "bd9ccdbca768fadfd2116b30443f2ea2fcbd04bd3dcfff01d9d3563257861cb5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros builtin-interfaces rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake-ros rosidl-default-generators ];

  meta = {
    description = "Package containing message files";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

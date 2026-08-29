
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-trimble-gsof-msgs";
  version = "0.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/trimble_driver_ros-release/archive/release/lyrical/trimble_gsof_msgs/0.2.0-2.tar.gz";
    name = "0.2.0-2.tar.gz";
    sha256 = "703a785e66a2476ae5af53f5da2bab2efadfeaa6aa41cb72b9efc43c57ada843";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "A package ROS idl equivalents of Trimble General Serial Output Format.";
    license = with lib.licenses; [ bsd2 ];
  };
}

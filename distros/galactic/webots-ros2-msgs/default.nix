
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs, vision-msgs }:
buildRosPackage {
  pname = "ros-galactic-webots-ros2-msgs";
  version = "2022.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/galactic/webots_ros2_msgs/2022.1.0-2.tar.gz";
    name = "2022.1.0-2.tar.gz";
    sha256 = "ce21daa14010e06b4c8308fa0e1f8862672e8e02fe078abb839827a1d94e6ee5";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs vision-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Services and Messages of the webots_ros2 packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}

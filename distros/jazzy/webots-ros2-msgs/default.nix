
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs, vision-msgs }:
buildRosPackage {
  pname = "ros-jazzy-webots-ros2-msgs";
  version = "2023.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/jazzy/webots_ros2_msgs/2023.1.3-1.tar.gz";
    name = "2023.1.3-1.tar.gz";
    sha256 = "b2d69b0547187be071c6c85c9d83d085357641d95e89e5929cb78503c0a3aa85";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs vision-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Services and Messages of the webots_ros2 packages.";
    license = with lib.licenses; [ asl20 ];
  };
}

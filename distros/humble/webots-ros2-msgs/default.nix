
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs, vision-msgs }:
buildRosPackage {
  pname = "ros-humble-webots-ros2-msgs";
  version = "1.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/humble/webots_ros2_msgs/1.2.3-1.tar.gz";
    name = "1.2.3-1.tar.gz";
    sha256 = "88abcf2005575eb01f8a43a6b9a4b23e37c995da20bdb757a17b9cb7b450c38c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs vision-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Services and Messages of the webots_ros2 packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}

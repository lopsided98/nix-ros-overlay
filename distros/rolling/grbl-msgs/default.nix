
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-grbl-msgs";
  version = "0.0.2-r8";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grbl_msgs-release/archive/release/rolling/grbl_msgs/0.0.2-8.tar.gz";
    name = "0.0.2-8.tar.gz";
    sha256 = "d7c2ff124b6da99c121d6b477bbea34bda7d0660dd7c1ad28bc4d7ebdcae7186";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ action-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 Messages package for GRBL devices'';
    license = with lib.licenses; [ mit ];
  };
}

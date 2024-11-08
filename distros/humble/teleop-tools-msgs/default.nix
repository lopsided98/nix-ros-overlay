
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-teleop-tools-msgs";
  version = "1.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/teleop_tools-release/archive/release/humble/teleop_tools_msgs/1.7.0-1.tar.gz";
    name = "1.7.0-1.tar.gz";
    sha256 = "db35902872741d1f7552dacbccb1fe3635b4d186b0d526a4a4a4d68a92eaa084";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ action-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "The teleop_tools_msgs package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

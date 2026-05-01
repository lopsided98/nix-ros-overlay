
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-irobot-create-msgs";
  version = "2.1.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/irobot_create_msgs-release/archive/release/lyrical/irobot_create_msgs/2.1.0-5.tar.gz";
    name = "2.1.0-5.tar.gz";
    sha256 = "3eba590278efd6dfc84e76d094c1a56bfcdb44e821d2d3e52083fbd07125f280";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ action-msgs builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Package containing action, message, and service definitions used by the iRobot(R) Create(R) platform";
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-irobot-create-msgs";
  version = "2.1.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/irobot_create_msgs-release/archive/release/rolling/irobot_create_msgs/2.1.0-4.tar.gz";
    name = "2.1.0-4.tar.gz";
    sha256 = "79d522e7b97d097de1ae107e995071b71029f5a42d8d2dc849d8fe24d12dca90";
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

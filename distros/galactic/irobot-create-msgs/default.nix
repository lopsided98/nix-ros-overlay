
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-irobot-create-msgs";
  version = "1.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/irobot_create_msgs-release/archive/release/galactic/irobot_create_msgs/1.2.4-1.tar.gz";
    name = "1.2.4-1.tar.gz";
    sha256 = "413cd833f869337ea912082491b86527a7e0f1a8951306b4e96aeb1de98208c5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ action-msgs builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Package containing action, message, and service definitions used by the iRobot(R) Create(R) platform'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

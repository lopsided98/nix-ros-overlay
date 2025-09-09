
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, ros-environment, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-rtcm-msgs";
  version = "1.1.6-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rtcm_msgs-release/archive/release/kilted/rtcm_msgs/1.1.6-4.tar.gz";
    name = "1.1.6-4.tar.gz";
    sha256 = "5f235b6485f8f54995f6d4db928ee8674e30f07a619c801182879fcc722e9153";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake builtin-interfaces ros-environment rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "The rtcm_msgs package contains messages related to data in the RTCM format.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

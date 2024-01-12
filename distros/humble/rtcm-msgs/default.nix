
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, ros-environment, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-rtcm-msgs";
  version = "1.1.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rtcm_msgs-release/archive/release/humble/rtcm_msgs/1.1.6-1.tar.gz";
    name = "1.1.6-1.tar.gz";
    sha256 = "60b96f5d72593b069caf9d273b191c69baa7bc25d43cde8d63d5615d769d3ccf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake builtin-interfaces ros-environment rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''The rtcm_msgs package contains messages related to data in the RTCM format.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

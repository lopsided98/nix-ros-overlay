
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, ros-environment, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-rtcm-msgs";
  version = "1.1.6-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rtcm_msgs-release/archive/release/rolling/rtcm_msgs/1.1.6-3.tar.gz";
    name = "1.1.6-3.tar.gz";
    sha256 = "4f7ea35cb3be93c9b81e29b4f224a73455baaff9262f99b5a29490216cae29b4";
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

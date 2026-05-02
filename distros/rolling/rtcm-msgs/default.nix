
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, ros-environment, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-rtcm-msgs";
  version = "1.1.6-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rtcm_msgs-release/archive/release/rolling/rtcm_msgs/1.1.6-4.tar.gz";
    name = "1.1.6-4.tar.gz";
    sha256 = "0719f5bdd088051204eee5498398bbbeddd79beb91e7baf463d95ed96b403bdb";
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

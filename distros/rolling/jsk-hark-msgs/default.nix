
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ros-environment, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-jsk-hark-msgs";
  version = "5.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/jsk_common_msgs-release/archive/release/rolling/jsk_hark_msgs/5.0.2-1.tar.gz";
    name = "5.0.2-1.tar.gz";
    sha256 = "8e15d06e2728b4d00bfb1bb4476bde40e9391888b4d8a622c1f9eecbc321c511";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "jsk_hark_msgs";
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, ros-environment, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-rtcm-msgs";
  version = "1.1.6-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rtcm_msgs-release/archive/release/lyrical/rtcm_msgs/1.1.6-5.tar.gz";
    name = "1.1.6-5.tar.gz";
    sha256 = "f349ce254e32d4a945959ee03943d23d35d6ce31b6a25867f4dcc235c6a7a033";
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

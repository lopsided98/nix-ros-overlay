
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, ros-environment, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-rtcm-msgs";
  version = "1.1.6-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rtcm_msgs-release/archive/release/rolling/rtcm_msgs/1.1.6-2.tar.gz";
    name = "1.1.6-2.tar.gz";
    sha256 = "376436dc39842b72d58ceaa273ee02f6b847a4504ef53108ee806bcc71ef30d9";
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


# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ros-environment, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-rtcm-msgs";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/rtcm_msgs-release/archive/release/foxy/rtcm_msgs/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "7c6f5932fbdf7b349a0639530f5569ab0f036f78257a93f0c6504b569fa88672";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment rosidl-default-generators ];
  propagatedBuildInputs = [ std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''The rtcm_msgs package contains messages related to data in the RTCM format.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

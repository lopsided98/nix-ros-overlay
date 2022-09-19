
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ros-environment, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-humble-rtcm-msgs";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/rtcm_msgs-release/archive/release/humble/rtcm_msgs/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "d56273ed1e0e07cfdc80fa06cdc67d22020ef4c481d5391d6f2897ddb9afcca5";
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

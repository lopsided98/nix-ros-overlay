
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-hri-privacy-msgs";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros4hri/hri_privacy_msgs-release/archive/release/humble/hri_privacy_msgs/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "d86d5b826254110001cc78b9bf57a515aa389455273e31708d26af22f5ce2c88";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "ROS message definitions for declaring privacy-sensitive data flows";
    license = with lib.licenses; [ asl20 ];
  };
}

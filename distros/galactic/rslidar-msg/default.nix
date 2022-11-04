
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rclcpp, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-rslidar-msg";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/rslidar_msg-release/archive/release/galactic/rslidar_msg/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "c52dbe82d960f0ea901e193d1db3203800225dc1c97651380d49fc454297b955";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rclcpp rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Messages for the rslidar_sdk package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

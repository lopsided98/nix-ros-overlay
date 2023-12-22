
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-aruco-msgs";
  version = "5.0.4-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/aruco_ros-release/archive/release/humble/aruco_msgs/5.0.4-1.tar.gz";
    name = "5.0.4-1.tar.gz";
    sha256 = "651f6eaccc1fc67a6f6669f92cc4fd341e0011635c74d228a76a494f6b293995";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The aruco_msgs package'';
    license = with lib.licenses; [ mit ];
  };
}

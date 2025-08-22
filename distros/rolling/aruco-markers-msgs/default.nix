
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-aruco-markers-msgs";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/namo-robotics/aruco_markers-release/archive/release/rolling/aruco_markers_msgs/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "8ad97b5efd1a013691a068eb70db78e3d266ea66db0c9afdcb460bdc189f5d6d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The aruco_markers_msgs package";
    license = with lib.licenses; [ mit ];
  };
}


# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-aruco-msgs";
  version = "5.0.5-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aruco_ros-release/archive/release/kilted/aruco_msgs/5.0.5-2.tar.gz";
    name = "5.0.5-2.tar.gz";
    sha256 = "2063a2a7af780309ba2e7a58e3434432ead1a414be59429d8d09a23f6fcb4672";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The aruco_msgs package";
    license = with lib.licenses; [ mit ];
  };
}

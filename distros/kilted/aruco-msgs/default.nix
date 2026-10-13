
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-aruco-msgs";
  version = "5.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aruco_ros-release/archive/release/kilted/aruco_msgs/5.0.6-1.tar.gz";
    name = "5.0.6-1.tar.gz";
    sha256 = "f2d1d1e8af7368ab31654305978489cbda985fe39f7e177f2727fb695eaec82b";
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

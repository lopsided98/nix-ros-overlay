
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-kilted-soccer-geometry-msgs";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/soccer_interfaces-release/archive/release/kilted/soccer_geometry_msgs/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "30d5d60465f16483e05a5357f9b0403f65a3e2c32d49aeb3c6df62487f665492";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A package containing msgs that extend geometry_msgs for use in soccer-related packages";
    license = with lib.licenses; [ asl20 ];
  };
}

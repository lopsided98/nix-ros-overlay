
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-kilted-tf2-msgs";
  version = "0.41.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/kilted/tf2_msgs/0.41.0-1.tar.gz";
    name = "0.41.0-1.tar.gz";
    sha256 = "db8cc9d1f1926ab4c3fb4fa7af3bd1dffc9d86915c95b37b74b000cea8aeecd8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "tf2_msgs";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

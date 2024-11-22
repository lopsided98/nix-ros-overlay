
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-tf2-msgs";
  version = "0.39.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/rolling/tf2_msgs/0.39.2-1.tar.gz";
    name = "0.39.2-1.tar.gz";
    sha256 = "8f488ceb27f4aeb29e4db2566d27fd67f71857725866e6eda396a73b8646546b";
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


# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-iron-fuse-msgs";
  version = "1.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/iron/fuse_msgs/1.0.1-3.tar.gz";
    name = "1.0.1-3.tar.gz";
    sha256 = "bf5e60fcab1a6e1cc91e65d4d94bfbd43d6f8dedfc75b93d0801f2aef6a5e8f1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''The fuse_msgs package contains messages capable of holding serialized fuse objects.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

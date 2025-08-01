
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, geometry-msgs, gtest-vendor, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-fuse-msgs";
  version = "1.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/kilted/fuse_msgs/1.2.4-1.tar.gz";
    name = "1.2.4-1.tar.gz";
    sha256 = "629b6ae596eae5b3d7e754ef26df53f822430670c3148917de41acaa99413b81";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake-ros geometry-msgs gtest-vendor rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "The fuse_msgs package contains messages capable of holding serialized fuse objects.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

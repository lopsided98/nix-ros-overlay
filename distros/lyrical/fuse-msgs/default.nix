
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, geometry-msgs, gtest-vendor, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-fuse-msgs";
  version = "1.3.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/lyrical/fuse_msgs/1.3.1-3.tar.gz";
    name = "1.3.1-3.tar.gz";
    sha256 = "5e17234827dfe38ca68a317a4836c8d361cfdc62493abff843aedd596f64c8b2";
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

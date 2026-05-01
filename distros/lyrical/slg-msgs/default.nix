
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-slg-msgs";
  version = "3.9.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/slg_msgs-release/archive/release/lyrical/slg_msgs/3.9.1-3.tar.gz";
    name = "3.9.1-3.tar.gz";
    sha256 = "3507be45710afc36cc934a0a1f735d1cb8a3d1878ab32b10e8506d4341db8e82";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package provides classes and messages to interact with laser related geometry.";
    license = with lib.licenses; [ asl20 ];
  };
}

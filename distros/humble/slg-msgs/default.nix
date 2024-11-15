
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-slg-msgs";
  version = "3.9.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/slg_msgs-release/archive/release/humble/slg_msgs/3.9.1-1.tar.gz";
    name = "3.9.1-1.tar.gz";
    sha256 = "655af98521826479275eaffda3324b18bb5afe09ae5fe178e3f818e33e8e9c2b";
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

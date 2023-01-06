
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-stubborn-buddies-msgs";
  version = "1.0.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/stubborn_buddies-release/archive/release/rolling/stubborn_buddies_msgs/1.0.0-4.tar.gz";
    name = "1.0.0-4.tar.gz";
    sha256 = "611a221cacd9921f5badeaefa48facd2215a269d84fde871eac5c2c261d6c760";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Messages to support library of stubborn buddies'';
    license = with lib.licenses; [ asl20 ];
  };
}

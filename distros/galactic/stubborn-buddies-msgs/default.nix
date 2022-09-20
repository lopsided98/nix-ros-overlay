
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-stubborn-buddies-msgs";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/stubborn_buddies-release/archive/release/galactic/stubborn_buddies_msgs/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "bce2abcd2da5bf94ccbea3da174f9961d3b389f17cecf413a61e6342a22f8127";
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

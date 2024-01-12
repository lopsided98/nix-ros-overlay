
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-iron-stubborn-buddies-msgs";
  version = "1.0.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/stubborn_buddies-release/archive/release/iron/stubborn_buddies_msgs/1.0.0-6.tar.gz";
    name = "1.0.0-6.tar.gz";
    sha256 = "8d4766ef7d2e989b6a0780f7495159538b624953dbca92389fa0a1b7ada6d391";
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

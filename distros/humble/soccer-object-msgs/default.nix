
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-soccer-object-msgs";
  version = "1.0.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/soccer_object_msgs-release/archive/release/humble/soccer_object_msgs/1.0.1-4.tar.gz";
    name = "1.0.1-4.tar.gz";
    sha256 = "3f97688167bb0c7ae7d550a6063bdaca4b707e5d9e2050091b9630b1428416a3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package providing interfaces for objects in a soccer domain.'';
    license = with lib.licenses; [ asl20 ];
  };
}

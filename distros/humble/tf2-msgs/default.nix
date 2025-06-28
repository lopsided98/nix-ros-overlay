
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-tf2-msgs";
  version = "0.25.14-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/humble/tf2_msgs/0.25.14-1.tar.gz";
    name = "0.25.14-1.tar.gz";
    sha256 = "5ede757efc37d7efc32eb10eff68b9f6fe1fe36ddb3e8971d5059f56edb05aa8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ action-msgs builtin-interfaces geometry-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "tf2_msgs";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

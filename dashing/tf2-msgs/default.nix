
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, ament-cmake, rosidl-default-generators, action-msgs, rosidl-default-runtime, geometry-msgs }:
buildRosPackage {
  pname = "ros-dashing-tf2-msgs";
  version = "0.11.4-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/geometry2-release/archive/release/dashing/tf2_msgs/0.11.4-1.tar.gz;
    sha256 = "59cce65083540a2637788f274803d7425ad6aa925cd953812686af2d8faea558";
  };

  buildType = "ament_cmake";
  buildInputs = [ builtin-interfaces action-msgs geometry-msgs ];
  propagatedBuildInputs = [ action-msgs rosidl-default-runtime geometry-msgs builtin-interfaces ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''tf2_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

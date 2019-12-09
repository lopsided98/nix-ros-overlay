
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, rosidl-default-runtime, ament-cmake, rosidl-default-generators, builtin-interfaces, action-msgs }:
buildRosPackage {
  pname = "ros-eloquent-tf2-msgs";
  version = "0.12.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/eloquent/tf2_msgs/0.12.4-1.tar.gz";
    name = "0.12.4-1.tar.gz";
    sha256 = "7c68fef9566f5d48f78f6e593288b6889dc5d9a66c901085fd7317151ce398c5";
  };

  buildType = "ament_cmake";
  buildInputs = [ builtin-interfaces geometry-msgs action-msgs ];
  propagatedBuildInputs = [ rosidl-default-runtime builtin-interfaces geometry-msgs action-msgs ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''tf2_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

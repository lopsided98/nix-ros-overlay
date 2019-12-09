
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, rosidl-default-runtime, ament-cmake, rosidl-default-generators, builtin-interfaces, action-msgs }:
buildRosPackage {
  pname = "ros-dashing-tf2-msgs";
  version = "0.11.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/dashing/tf2_msgs/0.11.5-1.tar.gz";
    name = "0.11.5-1.tar.gz";
    sha256 = "e21eace5ca8b91b1fa78a03cf68b88bec719f9dc1cd56548f65d5787477af0fb";
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

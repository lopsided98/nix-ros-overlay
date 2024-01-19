
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-iron-polygon-msgs";
  version = "1.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/polygon_ros-release/archive/release/iron/polygon_msgs/1.0.2-2.tar.gz";
    name = "1.0.2-2.tar.gz";
    sha256 = "aaa275e699632457f195517cbd907fd1b8cc4e005c9281563d954ef5714d0300";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''General purpose two-dimensional polygons. Formerly a part of nav_2d_msgs'';
    license = with lib.licenses; [ bsd3 ];
  };
}

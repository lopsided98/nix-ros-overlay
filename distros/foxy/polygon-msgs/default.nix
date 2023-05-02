
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-polygon-msgs";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/MetroRobots-release/polygon_ros-release/archive/release/foxy/polygon_msgs/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "6b77f53c45697f1e5083f9494ea878bfc446324c5b8e06a1608ed3a81f45c74e";
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

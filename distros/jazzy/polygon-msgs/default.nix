
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-polygon-msgs";
  version = "1.0.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/polygon_ros-release/archive/release/jazzy/polygon_msgs/1.0.2-3.tar.gz";
    name = "1.0.2-3.tar.gz";
    sha256 = "fc814e8f39f368450fc3ac809742ab137b50907f12d2adc82e854cb8df86fa83";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "General purpose two-dimensional polygons. Formerly a part of nav_2d_msgs";
    license = with lib.licenses; [ bsd3 ];
  };
}

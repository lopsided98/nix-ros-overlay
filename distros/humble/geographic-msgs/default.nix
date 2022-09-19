
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-humble-geographic-msgs";
  version = "1.0.4-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geographic_info-release/archive/release/humble/geographic_msgs/1.0.4-6.tar.gz";
    name = "1.0.4-6.tar.gz";
    sha256 = "0c20ce1e1f3407176c30ad54843dfe1e583ebb684b7d0a27e2f08f84379d4584";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime std-msgs unique-identifier-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS messages for Geographic Information Systems.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

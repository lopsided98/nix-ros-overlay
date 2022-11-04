
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-galactic-geographic-msgs";
  version = "1.0.4-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geographic_info-release/archive/release/galactic/geographic_msgs/1.0.4-5.tar.gz";
    name = "1.0.4-5.tar.gz";
    sha256 = "9b18d7a8bf11f36060ea442be3f9edcb36dba6500c4cb9c5b1cc013fd100ffe8";
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

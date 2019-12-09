
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, rosidl-default-runtime, std-msgs, ament-cmake, unique-identifier-msgs, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-dashing-geographic-msgs";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-geographic-info/geographic_info-release/archive/release/dashing/geographic_msgs/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "8b92cdc3bc12992f94de86638a745fb42c41471b5e99d27c766765343b320d65";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs rosidl-default-generators geometry-msgs unique-identifier-msgs ];
  propagatedBuildInputs = [ rosidl-default-runtime geometry-msgs std-msgs unique-identifier-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS messages for Geographic Information Systems.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

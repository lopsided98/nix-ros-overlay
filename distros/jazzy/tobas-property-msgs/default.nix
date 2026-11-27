
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-tobas-property-msgs";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_property_msgs/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "7dc0d3e3df29175725c8f2527eac90461fe2798af6ecb09d5bd83b49cdcf1e72";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 services for getting and setting typed Tobas properties.";
    license = with lib.licenses; [ asl20 ];
  };
}

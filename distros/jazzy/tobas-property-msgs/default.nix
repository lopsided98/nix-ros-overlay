
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-tobas-property-msgs";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_property_msgs/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "b391c3aaa5eb6a877c719e22e6e5d05344e531f3d965bc02953d935c7d080ef7";
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

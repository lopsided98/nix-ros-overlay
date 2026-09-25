
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-tobas-property-msgs";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_property_msgs/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "9ba3e6c1d56dde887ba890b40a786308ff3e9cede6cb2449b723fbfad2e44fd7";
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

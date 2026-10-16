
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, tobas-kdl-msgs, tobas-std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-tobas-drone-msgs";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_drone_msgs/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "b25c8af4643fabb5c0da0e6be7f5b4255be78e554b890fdb38ac7e9b31df350b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime tobas-kdl-msgs tobas-std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS messages for `tobas::Drone`.";
    license = with lib.licenses; [ asl20 ];
  };
}

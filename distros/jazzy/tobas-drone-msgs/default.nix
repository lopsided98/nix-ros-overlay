
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, tobas-kdl-msgs, tobas-std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-tobas-drone-msgs";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_drone_msgs/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "69cd8267679e0e6601fe8d76c9ae6e9e3b911bc47112039d15d35e7588b2648c";
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


# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, tobas-kdl-msgs, tobas-std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-tobas-drone-msgs";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_drone_msgs/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "ee04f69fc2172cc35fcbb66f018c26e74774d8f18f82281193eda2676ac35511";
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


# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-pcl-msgs";
  version = "1.0.0-r10";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pcl_msgs-release/archive/release/lyrical/pcl_msgs/1.0.0-10.tar.gz";
    name = "1.0.0-10.tar.gz";
    sha256 = "b98dc3fc225acda1c927a8f71bd6927a1140e8715be05d0b9af5c8f4235509b4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Package containing PCL (Point Cloud Library)-related ROS messages.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

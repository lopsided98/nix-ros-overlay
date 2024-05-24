
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-pcl-msgs";
  version = "1.0.0-r9";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pcl_msgs-release/archive/release/jazzy/pcl_msgs/1.0.0-9.tar.gz";
    name = "1.0.0-9.tar.gz";
    sha256 = "4016c2f612c1d5dd3645a0867ea7366a613504dc32fe3e9201aae79f99c5e58e";
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


# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-pcl-msgs";
  version = "1.0.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pcl_msgs-release/archive/release/galactic/pcl_msgs/1.0.0-6.tar.gz";
    name = "1.0.0-6.tar.gz";
    sha256 = "e9b9c21a2786ed5d7d3d658d8b37e11d1c51af03fb97cc77eb1505bdf44fbca4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Package containing PCL (Point Cloud Library)-related ROS messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-pcl-msgs";
  version = "1.0.0-r8";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pcl_msgs-release/archive/release/rolling/pcl_msgs/1.0.0-8.tar.gz";
    name = "1.0.0-8.tar.gz";
    sha256 = "ae87ca22f79978294f3b789d7e160dee534aca940fd9b22dc54b4924739b5657";
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

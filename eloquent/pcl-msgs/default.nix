
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, rosidl-default-runtime, std-msgs, ament-lint-common, ament-cmake, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-eloquent-pcl-msgs";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pcl_msgs-release/archive/release/eloquent/pcl_msgs/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "80e8ec72d50935088286abb77712ba1aede89dd49fd5a420a558570a8564a661";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs sensor-msgs ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ std-msgs sensor-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''Package containing PCL (Point Cloud Library)-related ROS messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

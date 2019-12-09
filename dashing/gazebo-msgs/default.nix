
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, trajectory-msgs, geometry-msgs, rosidl-default-runtime, std-msgs, ament-lint-common, ament-cmake, rosidl-default-generators, builtin-interfaces }:
buildRosPackage {
  pname = "ros-dashing-gazebo-msgs";
  version = "3.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_ros_pkgs-release/archive/release/dashing/gazebo_msgs/3.3.4-1.tar.gz";
    name = "3.3.4-1.tar.gz";
    sha256 = "48c7f58224085863d77f161ed0b329ff8218fecb43808ecc7f007903219b46f0";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs builtin-interfaces geometry-msgs trajectory-msgs ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ trajectory-msgs geometry-msgs rosidl-default-runtime std-msgs builtin-interfaces ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''Message and service data structures for interacting with Gazebo from ROS2.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

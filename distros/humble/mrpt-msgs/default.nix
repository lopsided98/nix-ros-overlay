
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cppcheck, ament-cpplint, ament-lint-auto, ament-lint-cmake, ament-lint-common, geometry-msgs, ros-environment, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-mrpt-msgs";
  version = "0.4.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_msgs-release/archive/release/humble/mrpt_msgs/0.4.6-1.tar.gz";
    name = "0.4.6-1.tar.gz";
    sha256 = "78e76f01e87e3edd715ea0eb8610072f0a1fd2b0fc6bb16527e7d539d0af9673";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment rosidl-default-generators ];
  checkInputs = [ ament-cppcheck ament-cpplint ament-lint-auto ament-lint-cmake ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''ROS messages for MRPT classes and objects'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

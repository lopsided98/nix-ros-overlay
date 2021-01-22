
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-dashing-rc-common-msgs";
  version = "0.5.3-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_common_msgs_ros2-release/archive/release/dashing/rc_common_msgs/0.5.3-1.tar.gz";
    name = "0.5.3-1.tar.gz";
    sha256 = "6379751f1827fce78815852468d9e4d27853cbd7058406783c352830821bedf1";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Common msg and srv definitions used by Roboception's ROS2 packages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

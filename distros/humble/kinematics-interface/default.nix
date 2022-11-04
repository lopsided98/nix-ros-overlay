
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-humble-kinematics-interface";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kinematics_interface-release/archive/release/humble/kinematics_interface/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "deed39ef1f407630336ace5f361a6ccdea49de31986c0852b28a93da3f556f14";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ eigen rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Kinematics interface for ROS 2 control'';
    license = with lib.licenses; [ asl20 ];
  };
}

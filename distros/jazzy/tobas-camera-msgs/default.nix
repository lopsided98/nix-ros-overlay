
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-tobas-camera-msgs";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_camera_msgs/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "91457e5a7a8e1ec2e17532e961b9050555dfbd8c47f0880f1a9d74318fd45dcf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 interfaces for camera status, exposure, gimbal control, recording, and image capture.";
    license = with lib.licenses; [ asl20 ];
  };
}

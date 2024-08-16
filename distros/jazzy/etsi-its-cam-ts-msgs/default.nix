
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ros-environment, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-etsi-its-cam-ts-msgs";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/etsi_its_messages-release/archive/release/jazzy/etsi_its_cam_ts_msgs/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "e0a46fdc23019a4bfac82c502e7360b96ac39e90dcc933d83b46d5990e1db580";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-default-generators ];
  propagatedBuildInputs = [ ros-environment rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ rosidl-default-generators ];

  meta = {
    description = "ROS messages for ETSI ITS CAM (TS)";
    license = with lib.licenses; [ mit ];
  };
}

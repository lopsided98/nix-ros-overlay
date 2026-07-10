
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-etsi-its-cam-ts-msgs";
  version = "3.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/etsi_its_messages-release/archive/release/humble/etsi_its_cam_ts_msgs/3.5.0-1.tar.gz";
    name = "3.5.0-1.tar.gz";
    sha256 = "324626bf8687d30bd8618dc39cf36b3fffaee456669bb9a14cf50f965d4f2dcb";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ rosidl-default-generators ];

  meta = {
    description = "ROS messages for ETSI ITS CAM (TS)";
    license = with lib.licenses; [ mit ];
  };
}

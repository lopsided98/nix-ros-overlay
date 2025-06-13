
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ros-environment, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-etsi-its-denm-msgs";
  version = "3.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/etsi_its_messages-release/archive/release/humble/etsi_its_denm_msgs/3.2.1-1.tar.gz";
    name = "3.2.1-1.tar.gz";
    sha256 = "fbee600aab20510ccda05944b3386c47ae8d79557e3c0c3d5cfe1e62775f8ceb";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-default-generators ];
  propagatedBuildInputs = [ ros-environment rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ rosidl-default-generators ];

  meta = {
    description = "ROS messages for ETSI ITS DENM";
    license = with lib.licenses; [ mit ];
  };
}

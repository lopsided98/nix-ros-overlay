
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ros-environment, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-etsi-its-cpm-ts-msgs";
  version = "3.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/etsi_its_messages-release/archive/release/jazzy/etsi_its_cpm_ts_msgs/3.2.1-1.tar.gz";
    name = "3.2.1-1.tar.gz";
    sha256 = "cb9d8cab36ef53cd7a6cb861107a2f552fa0e07483ca9fb8d2e378337554e377";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-default-generators ];
  propagatedBuildInputs = [ ros-environment rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ rosidl-default-generators ];

  meta = {
    description = "ROS messages for ETSI ITS CPM (TS)";
    license = with lib.licenses; [ mit ];
  };
}

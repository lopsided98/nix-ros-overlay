
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ros-environment, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-etsi-its-mcm-uulm-msgs";
  version = "3.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/etsi_its_messages-release/archive/release/humble/etsi_its_mcm_uulm_msgs/3.2.1-1.tar.gz";
    name = "3.2.1-1.tar.gz";
    sha256 = "814531f9f5a78d7019db711b6c94ffd6da4e6313c80326c2a47055a147cfe34a";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-default-generators ];
  propagatedBuildInputs = [ ros-environment rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ rosidl-default-generators ];

  meta = {
    description = "ROS messages for draft MCM (TS) version of UULM";
    license = with lib.licenses; [ mit ];
  };
}

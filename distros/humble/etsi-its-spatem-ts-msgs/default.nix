
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ros-environment, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-etsi-its-spatem-ts-msgs";
  version = "3.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/etsi_its_messages-release/archive/release/humble/etsi_its_spatem_ts_msgs/3.2.1-1.tar.gz";
    name = "3.2.1-1.tar.gz";
    sha256 = "208dad2a94cab0b4f37b855b016e6409b1344b6771b159bc09912d5826d17593";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-default-generators ];
  propagatedBuildInputs = [ ros-environment rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ rosidl-default-generators ];

  meta = {
    description = "ROS messages for ETSI ITS SPATEM (TS)";
    license = with lib.licenses; [ mit ];
  };
}


# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-qb-device-msgs";
  version = "4.1.3-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros2-release/get/release/humble/qb_device_msgs/4.1.3-1.tar.gz";
    name = "4.1.3-1.tar.gz";
    sha256 = "f4577dbd876defa1e8922ed5e790b96fb7cae7df5eafceb075162ce277a52e27";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "This package contains the device-independent custom ROS messages for qbrobotics® devices.";
    license = with lib.licenses; [ bsd3 ];
  };
}

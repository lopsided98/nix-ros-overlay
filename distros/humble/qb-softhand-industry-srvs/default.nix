
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, qb-softhand-industry-msgs, rosidl-default-generators, rosidl-default-runtime, std-srvs }:
buildRosPackage {
  pname = "ros-humble-qb-softhand-industry-srvs";
  version = "2.1.2-r4";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbshin-ros2-release/get/release/humble/qb_softhand_industry_srvs/2.1.2-4.tar.gz";
    name = "2.1.2-4.tar.gz";
    sha256 = "39e84b17adfd7eeecbf65908bfa02dca31ac56c37522dc741ed2426737367b2e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ qb-softhand-industry-msgs rosidl-default-runtime std-srvs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "This package contains the ROS services for qbrobotics® SoftHand Industry.";
    license = with lib.licenses; [ bsd3 ];
  };
}

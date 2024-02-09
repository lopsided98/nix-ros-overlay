
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-qb-softhand-industry-msgs";
  version = "2.1.2-r4";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbshin-ros2-release/get/release/humble/qb_softhand_industry_msgs/2.1.2-4.tar.gz";
    name = "2.1.2-4.tar.gz";
    sha256 = "a2027bd50f5f59f7b4618a068ff6c0a91805711a6aeb5415bf84db63cb7d957c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''This package contains the ROS messages for qbrobotics® SoftHand Industry.'';
    license = with lib.licenses; [ bsd3 ];
  };
}

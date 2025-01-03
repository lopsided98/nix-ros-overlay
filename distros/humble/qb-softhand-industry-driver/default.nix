
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, qb-softhand-industry-srvs, rclcpp }:
buildRosPackage {
  pname = "ros-humble-qb-softhand-industry-driver";
  version = "2.1.2-r4";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbshin-ros2-release/get/release/humble/qb_softhand_industry_driver/2.1.2-4.tar.gz";
    name = "2.1.2-4.tar.gz";
    sha256 = "85c73614e76c5f6ef50600c295724702febee448d7d1065d7172e9aad3fcbea0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ qb-softhand-industry-srvs rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package contains communication interface for qbrobotics® SoftHand Industry.";
    license = with lib.licenses; [ bsd3 ];
  };
}

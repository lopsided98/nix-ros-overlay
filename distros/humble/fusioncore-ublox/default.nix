
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nav-msgs, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-humble-fusioncore-ublox";
  version = "0.3.5-r1";

  src = fetchurl {
    url = "https://github.com/manankharwar/fusioncore-release/archive/release/humble/fusioncore_ublox/0.3.5-1.tar.gz";
    name = "0.3.5-1.tar.gz";
    sha256 = "d5ff543cadf21649a3da5f292315b9aad72d7de580c80dff420d0e55d4b34d34";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ nav-msgs rclcpp std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Bridge nodes for u-blox GPS receivers: converts raw NavPVT Doppler velocity to nav_msgs/Odometry for FusionCore (gnss.velocity_topic). Optional companion to fusioncore_ros; not required to build or run FusionCore.";
    license = with lib.licenses; [ asl20 ];
  };
}

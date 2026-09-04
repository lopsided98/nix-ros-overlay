
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nav-msgs, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-fusioncore-ublox";
  version = "0.3.8-r1";

  src = fetchurl {
    url = "https://github.com/manankharwar/fusioncore-release/archive/release/jazzy/fusioncore_ublox/0.3.8-1.tar.gz";
    name = "0.3.8-1.tar.gz";
    sha256 = "890abab3de046eb9dd2400858cb84713d72202f6db4dc363c34dbfe64aa5cb4b";
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


# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nav-msgs, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-fusioncore-ublox";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/manankharwar/fusioncore-release/archive/release/jazzy/fusioncore_ublox/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "5b785e9758df2758aed78c128f3926227c40d35619ccdab7f247650811ed1fc1";
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

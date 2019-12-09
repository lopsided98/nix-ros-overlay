
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, git, boost, gpgme, pluginlib, bzip2, ament-lint-common, ament-cmake, openssl, console-bridge, ros1-bridge, pkg-config, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-ros1-rosbag-storage-vendor";
  version = "0.0.6-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2_bag_v2-release/archive/release/dashing/ros1_rosbag_storage_vendor/0.0.6-2.tar.gz";
    name = "0.0.6-2.tar.gz";
    sha256 = "03c0f6275818a83d4d6ecae54c4bae1224bad436fb4d3c24708aae5aa5166be9";
  };

  buildType = "ament_cmake";
  buildInputs = [ boost gpgme pluginlib bzip2 openssl console-bridge ros1-bridge pkg-config ];
  checkInputs = [ ament-lint-common ament-lint-auto ];
  nativeBuildInputs = [ git ament-cmake ];

  meta = {
    description = ''Vendor package for rosbag_storage of ROS1'';
    license = with lib.licenses; [ asl20 ];
  };
}

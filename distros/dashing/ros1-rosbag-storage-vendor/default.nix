
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, boost, bzip2, console-bridge, git, gpgme, openssl, pkg-config, pluginlib, ros1-bridge }:
buildRosPackage {
  pname = "ros-dashing-ros1-rosbag-storage-vendor";
  version = "0.0.6-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2_bag_v2-release/archive/release/dashing/ros1_rosbag_storage_vendor/0.0.6-2.tar.gz";
    name = "0.0.6-2.tar.gz";
    sha256 = "03c0f6275818a83d4d6ecae54c4bae1224bad436fb4d3c24708aae5aa5166be9";
  };

  buildType = "ament_cmake";
  buildInputs = [ boost bzip2 console-bridge gpgme openssl pkg-config pluginlib ros1-bridge ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake git ];

  meta = {
    description = ''Vendor package for rosbag_storage of ROS1'';
    license = with lib.licenses; [ asl20 ];
  };
}

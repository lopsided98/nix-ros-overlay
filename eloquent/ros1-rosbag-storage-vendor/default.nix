
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, git, boost, gpgme, pluginlib, bzip2, ament-lint-common, ament-cmake, openssl, console-bridge, ros1-bridge, pkg-config, ament-lint-auto }:
buildRosPackage {
  pname = "ros-eloquent-ros1-rosbag-storage-vendor";
  version = "0.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2_bag_v2-release/archive/release/eloquent/ros1_rosbag_storage_vendor/0.0.7-1.tar.gz";
    name = "0.0.7-1.tar.gz";
    sha256 = "05d7a7a80dfcfa601f0ba9f1d1c25f81ab205265b75073f8c652b782130f262c";
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

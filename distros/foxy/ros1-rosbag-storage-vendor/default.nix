
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, boost, bzip2, console-bridge, git, gpgme, openssl, pkg-config, pluginlib, ros1-bridge }:
buildRosPackage {
  pname = "ros-foxy-ros1-rosbag-storage-vendor";
  version = "0.0.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2_bag_v2-release/archive/release/foxy/ros1_rosbag_storage_vendor/0.0.10-1.tar.gz";
    name = "0.0.10-1.tar.gz";
    sha256 = "906f93dd2429158441409477e5c63b7df183e1f0f2a8c4844d00139868e28817";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake boost bzip2 console-bridge git gpgme openssl pkg-config pluginlib ros1-bridge ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake git ];

  meta = {
    description = ''Vendor package for rosbag_storage of ROS1'';
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, boost, bzip2, console-bridge, git, gpgme, openssl, pkg-config, pluginlib, ros1-bridge }:
buildRosPackage {
  pname = "ros-eloquent-ros1-rosbag-storage-vendor";
  version = "0.0.7-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2_bag_v2-release/archive/release/eloquent/ros1_rosbag_storage_vendor/0.0.7-4.tar.gz";
    name = "0.0.7-4.tar.gz";
    sha256 = "f0364a32acc1d459e8a85759664c2a96ae64040162c00581b756728c22f36fae";
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

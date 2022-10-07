
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, pluginlib, rcpputils, rcutils, rosbag2-storage, rosbag2-test-common, sqlite3-vendor, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-galactic-rosbag2-storage-default-plugins";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/galactic/rosbag2_storage_default_plugins/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "1ed074db336a295c4b4741c56966088921639c655e838a62c446135d26ad0f9b";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common rosbag2-test-common ];
  propagatedBuildInputs = [ pluginlib rcpputils rcutils rosbag2-storage sqlite3-vendor yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROSBag2 SQLite3 storage plugin'';
    license = with lib.licenses; [ asl20 ];
  };
}

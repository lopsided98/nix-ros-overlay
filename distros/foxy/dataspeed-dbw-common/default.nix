
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, rclcpp, ros2-socketcan }:
buildRosPackage {
  pname = "ros-foxy-dataspeed-dbw-common";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/foxy/dataspeed_dbw_common/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "394d3ee26ad51e2910333a792a4cddbe04b507e435ce94664449d486fbe537af";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ rclcpp ros2-socketcan ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Common interfaces for drive-by-wire.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

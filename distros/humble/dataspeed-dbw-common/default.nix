
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, rclcpp, ros2-socketcan }:
buildRosPackage {
  pname = "ros-humble-dataspeed-dbw-common";
  version = "2.1.3-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/humble/dataspeed_dbw_common/2.1.3-1.tar.gz";
    name = "2.1.3-1.tar.gz";
    sha256 = "18b702547eae717be609c555ebc5017ec2e2455474384578d60622df05511b13";
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

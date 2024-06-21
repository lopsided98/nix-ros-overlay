
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, rclcpp, ros2-socketcan }:
buildRosPackage {
  pname = "ros-humble-dataspeed-dbw-common";
  version = "2.1.16-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/humble/dataspeed_dbw_common/2.1.16-1.tar.gz";
    name = "2.1.16-1.tar.gz";
    sha256 = "bae285899afec9c48536f04e1e3fdfea8a1956f246e705fb229084ea318e3813";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ rclcpp ros2-socketcan ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Common interfaces for drive-by-wire.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

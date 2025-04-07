
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, can-msgs, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-dataspeed-can-msg-filters";
  version = "2.0.6-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_can-release/archive/release/jazzy/dataspeed_can_msg_filters/2.0.6-1.tar.gz";
    name = "2.0.6-1.tar.gz";
    sha256 = "d18f5e77523ee21e418688c38778aa7e4bb6af9e318519cd918758550d82f987";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ can-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Time synchronize multiple CAN messages to get a single callback";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

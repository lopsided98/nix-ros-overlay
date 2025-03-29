
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, can-msgs, rclcpp }:
buildRosPackage {
  pname = "ros-humble-dataspeed-can-msg-filters";
  version = "2.0.6-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_can-release/archive/release/humble/dataspeed_can_msg_filters/2.0.6-1.tar.gz";
    name = "2.0.6-1.tar.gz";
    sha256 = "71791bcca3641826630df9ec03b09eea02cced3881f62939c3cc2c0e5295b5b4";
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

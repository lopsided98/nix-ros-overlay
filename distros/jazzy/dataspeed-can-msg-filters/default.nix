
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, can-msgs, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-dataspeed-can-msg-filters";
  version = "2.0.8-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_can-release/archive/release/jazzy/dataspeed_can_msg_filters/2.0.8-1.tar.gz";
    name = "2.0.8-1.tar.gz";
    sha256 = "bce823d9c35737517f8ebd857dcaf099069ba03997226db2afae9c91e124a54f";
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

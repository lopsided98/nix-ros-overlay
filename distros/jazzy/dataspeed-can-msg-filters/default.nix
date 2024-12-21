
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, can-msgs, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-dataspeed-can-msg-filters";
  version = "2.0.5-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_can-release/archive/release/jazzy/dataspeed_can_msg_filters/2.0.5-1.tar.gz";
    name = "2.0.5-1.tar.gz";
    sha256 = "a934291f47c43b32233f1a1e2e3d5bcacc1a09016ad4b6f6700d8e11f9d67114";
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
